import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/common/formatter.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/occurrence.dart';
import 'package:monipaep_mobile/screens/screens.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class OccurrenceReminder extends ConsumerWidget {
  const OccurrenceReminder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<SymptomOccurrence>> occurrences = ref.watch(
      occurrenceProvider,
    );

    final daysSinceUpdate =
        occurrences.value?.isNotEmpty == true
            ? DateTime.now()
                .difference(occurrences.value!.first.registeredDate)
                .inDays
            : 0;

    return Column(
      children: [
        Card(
          color: Theme.of(context).colorScheme.primaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 2,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child:
                  occurrences.value?.isNotEmpty == true
                      ? RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Você está há ',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '$daysSinceUpdate ${daysSinceUpdate == 1 ? 'dia' : 'dias'}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            const TextSpan(text: ' sem registrar sintomas'),
                          ],
                        ),
                      )
                      : Text(
                        'Você não possui sintomas registrados',
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
            ),
          ),
        ),
        occurrences.value?.isEmpty == true
            ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: PrimaryButton(
                label: 'Registrar Sintomas',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OccurrencesScreen(),
                    ),
                  );
                },
              ),
            )
            : GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OccurrencesScreen(),
                  ),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OccurrencesScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.report,
                              color: Theme.of(context).primaryColor,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Últimos Sintomas Registrados',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          child: occurrences.when(
                            data:
                                (value) => ListTile(
                                  title: Text(
                                    value[0].symptoms.isEmpty
                                        ? 'Sem sintomas'
                                        : value[0].symptoms
                                            .map((s) => s.name)
                                            .join(', '),
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  subtitle: Text(
                                    dateFormatter(value[0].registeredDate),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                            loading:
                                () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                            error:
                                (_, __) => const Center(
                                  child: Text('Erro ao carregar sintomas'),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
      ],
    );
  }
}
