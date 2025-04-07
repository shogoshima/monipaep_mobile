import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/common/date_formatter.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/occurrence.dart';

class OccurrenceReminder extends ConsumerWidget {
  const OccurrenceReminder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<SymptomOccurrence>> occurrences = ref.watch(
      occurrenceProvider,
    );
    final daysSinceUpdate =
        DateTime.now()
            .difference(
              occurrences.value?.first.registeredDate ?? DateTime.now(),
            )
            .inDays;
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  'Últimos Sintomas',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 120,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: switch (occurrences) {
                    AsyncData(:final value) => SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            value
                                .take(3)
                                .map(
                                  (occurrence) => ListTile(
                                    title: Text(
                                      occurrence.symptoms.isEmpty
                                          ? 'Sem sintomas'
                                          : occurrence.symptoms.join(', '),
                                    ),
                                    subtitle: Text(
                                      'Registrado em ${dateFormatter(occurrence.registeredDate)}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                      ),
                    ),
                    AsyncError() => const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Erro ao carregar sintomas'),
                    ),
                    _ => const Center(child: CircularProgressIndicator()),
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        occurrences.value?.isNotEmpty == true
            ? Text.rich(
              TextSpan(
                text: 'Você está há ',
                style: const TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text:
                        '$daysSinceUpdate ${daysSinceUpdate == 1 ? 'dia' : 'dias'}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const TextSpan(
                    text: ' sem registrar sintomas',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            )
            : Text(
              'Você não possui sintomas registrados',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
      ],
    );
  }
}
