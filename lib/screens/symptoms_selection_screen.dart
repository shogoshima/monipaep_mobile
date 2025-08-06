import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

Future<void> showConfirmDialog(
  BuildContext context,
  List<Symptom> selectedSymptoms,
  TextEditingController remarksController,
  VoidCallback onConfirm,
) async {
  return showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 8,
        titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
        actionsPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        title: Row(
          children: [
            Icon(Icons.info_outline, color: Theme.of(context).primaryColor),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                'Confirmar Sintomas',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sintomas selecionados:',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              ...selectedSymptoms.map(
                (symptom) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 20,
                        color: Theme.of(context).highlightColor,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          symptom.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(height: 24),
              Text(
                'Observações adicionais (opcional):',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: remarksController,
                maxLines: 4,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Digite suas observações aqui',
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextActionButton(
            label: 'Cancelar',
            onPressed: () => Navigator.of(context).pop(),
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.of(context).pop();
              onConfirm();
            },
            label: 'Enviar',
          ),
        ],
      );
    },
  );
}
