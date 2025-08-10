import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/common/show_dialog.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/occurrence.dart';
import 'package:monipaep_mobile/providers/symptom_list.dart';
import 'package:diacritic/diacritic.dart';
import 'package:monipaep_mobile/widgets/buttons.dart';

class SymptomsSelectionScreen extends ConsumerStatefulWidget {
  const SymptomsSelectionScreen({super.key});

  @override
  ConsumerState<SymptomsSelectionScreen> createState() =>
      _SymptomsSelectionScreenState();
}

class _SymptomsSelectionScreenState
    extends ConsumerState<SymptomsSelectionScreen> {
  List<Symptom> selectedSymptoms = [];
  TextEditingController remarksController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Symptom>> symptoms = ref.watch(symptomListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Selecionar Sintomas')),
      body: Stack(
        children: [
          Center(
            child: switch (symptoms) {
              AsyncData(:final value) => SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'Selecione os sintomas que está sentindo',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SearchAnchor(
                        builder: (
                          BuildContext context,
                          SearchController controller,
                        ) {
                          return SearchBar(
                            controller: controller,
                            padding: const WidgetStatePropertyAll<EdgeInsets>(
                              EdgeInsets.symmetric(horizontal: 16.0),
                            ),
                            leading: const Icon(Icons.search),
                            onTap: () {
                              controller.openView();
                            },
                            onChanged: (_) {
                              controller.openView();
                            },
                          );
                        },
                        suggestionsBuilder: (context, controller) {
                          // Convert the search text to lower case
                          // and remove accents and diacritical signs
                          final query = removeDiacritics(
                            controller.text.toLowerCase(),
                          );
                          // Filter the symptoms where either the name or description contains the query.
                          final suggestions =
                              value
                                  .where(
                                    (symptom) =>
                                        removeDiacritics(
                                          symptom.name.toLowerCase(),
                                        ).contains(query) ||
                                        removeDiacritics(
                                          symptom.description.toLowerCase(),
                                        ).contains(query),
                                  )
                                  .toList();

                          // Map each matching symptom to a ListTile widget.
                          return suggestions.map((symptom) {
                            return ListTile(
                              title: Text(symptom.name),
                              subtitle: Text(symptom.description),
                              onTap: () {
                                setState(() {
                                  final alreadySelected = selectedSymptoms.any(
                                    (c) => c.id == symptom.id,
                                  );
                                  if (!alreadySelected) {
                                    selectedSymptoms.add(symptom);
                                  } else {
                                    selectedSymptoms.removeWhere(
                                      (c) => c.id == symptom.id,
                                    );
                                  }

                                  controller.closeView('');
                                });
                              },
                              trailing:
                                  selectedSymptoms.any(
                                        (c) => c.id == symptom.id,
                                      )
                                      ? Icon(Icons.check)
                                      : SizedBox(),
                            );
                          }).toList();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children:
                            value
                                .map(
                                  (symptom) => CheckboxListTile(
                                    title: Text(symptom.name),
                                    subtitle: Text(symptom.description),
                                    value: selectedSymptoms.any(
                                      (c) => c.id == symptom.id,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        if (value == true) {
                                          selectedSymptoms.add(symptom);
                                        } else {
                                          selectedSymptoms.removeWhere(
                                            (c) => c.id == symptom.id,
                                          );
                                        }
                                      });
                                    },
                                  ),
                                )
                                .toList(),
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
              AsyncError() => const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Erro ao carregar sintomas'),
              ),
              _ => const Center(child: CircularProgressIndicator()),
            },
          ),
          Positioned(
            bottom: 24,
            right: 24,
            left: 24,
            child: PrimaryButton(
              onPressed:
                  selectedSymptoms.isEmpty
                      ? null
                      : () {
                        if (selectedSymptoms.isNotEmpty) {
                          showConfirmDialog(
                            context,
                            selectedSymptoms,
                            remarksController,
                            () {
                              ref
                                  .read(occurrenceProvider.notifier)
                                  .create(
                                    selectedSymptoms.toList(),
                                    remarksController.text,
                                  );

                              Navigator.pop(context);
                            },
                          );
                        }
                      },
              label: 'Salvar',
            ),
          ),
        ],
      ),
    );
  }
}