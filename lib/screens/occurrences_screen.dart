import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/common/formatter.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/occurrence.dart';
import 'package:monipaep_mobile/screens/symptoms_selection_screen.dart';
import 'package:monipaep_mobile/widgets/buttons.dart';

class OccurrencesScreen extends ConsumerStatefulWidget {
  const OccurrencesScreen({super.key});

  @override
  ConsumerState<OccurrencesScreen> createState() => _OccurrencesScreenState();
}

class _OccurrencesScreenState extends ConsumerState<OccurrencesScreen> {
  bool _editMode = false;
  final Set<String> _selectedOccurrenceIds = {};

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<SymptomOccurrence>> occurrences = ref.watch(
      occurrenceProvider,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ocorrências de Sintomas'),
        actions: [
          // Toggle edit mode
          IconButton(
            icon: Icon(_editMode ? Icons.cancel : Icons.edit),
            onPressed: () {
              setState(() {
                _editMode = !_editMode;
                _selectedOccurrenceIds.clear();
              });
            },
          ),
          // Delete button visible only in edit mode
          if (_editMode)
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () async {
                // Loop through selected occurrences and delete them
                for (final id in _selectedOccurrenceIds) {
                  await ref.read(occurrenceProvider.notifier).delete(id);
                }
                setState(() {
                  _editMode = false;
                  _selectedOccurrenceIds.clear();
                });
              },
            ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: occurrences.when(
                data:
                    (value) => ListView.builder(
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        final occurrence = value[index];
                        final isSelected = _selectedOccurrenceIds.contains(
                          occurrence.id,
                        );
                        return Column(
                          children: [
                            ListTile(
                              isThreeLine: true,
                              leading:
                                  _editMode
                                      ? Checkbox(
                                        value: isSelected,
                                        onChanged: (bool? selected) {
                                          setState(() {
                                            if (selected == true) {
                                              _selectedOccurrenceIds.add(
                                                occurrence.id,
                                              );
                                            } else {
                                              _selectedOccurrenceIds.remove(
                                                occurrence.id,
                                              );
                                            }
                                          });
                                        },
                                      )
                                      : null,
                              title: Text(
                                occurrence.symptoms.isEmpty
                                    ? 'sem sintomas'
                                    : occurrence.symptoms
                                        .map((symptom) => symptom.name)
                                        .join(', '),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (occurrence.symptoms.isNotEmpty)
                                    Text(
                                      occurrence.remarks != null
                                          ? 'Observações: ${occurrence.remarks}'
                                          : 'Sem observações',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.black87,
                                      ),
                                    ),
                                  Text(
                                    'Registrado em ${dateFormatter(occurrence.registeredDate)}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                              // Only allow navigation when not in edit mode
                              onTap:
                                  _editMode
                                      ? () {
                                        setState(() {
                                          if (isSelected) {
                                            _selectedOccurrenceIds.remove(
                                              occurrence.id,
                                            );
                                          } else {
                                            _selectedOccurrenceIds.add(
                                              occurrence.id,
                                            );
                                          }
                                        });
                                      }
                                      : () {
                                        ref
                                            .read(occurrenceProvider.notifier)
                                            .getAnalysis(occurrence.id);
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder:
                                        //         (context) => ChatScreen(
                                        //           symptomOccurrenceId:
                                        //               occurrence.id,
                                        //         ),
                                        //   ),
                                        // );
                                      },
                              trailing:
                                  !_editMode
                                      ? occurrence.instructions == null
                                          ? const Icon(
                                            Icons.priority_high,
                                            color: Colors.red,
                                          )
                                          : Icon(
                                            Icons.forward,
                                            color:
                                                Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                          )
                                      : null,
                            ),
                            const Divider(
                              color: Colors.grey,
                              height: 1,
                              thickness: 1,
                              indent: 16,
                              endIndent: 16,
                            ),
                          ],
                        );
                      },
                    ),
                error:
                    (_, __) =>
                        const Text('Oops, something unexpected happened'),
                loading: () => const CircularProgressIndicator(),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          !_editMode
              ? BottomAppBar(
                color: Theme.of(context).colorScheme.surface,
                child: PrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SymptomsSelectionScreen(),
                      ),
                    );
                  },
                  label: 'Registrar novos sintomas',
                ),
              )
              : null,
    );
  }
}
