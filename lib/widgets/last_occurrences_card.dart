import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/common/formatter.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/occurrence.dart';
import 'package:monipaep_mobile/screens/screens.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class LastOccurrencesCard extends ConsumerWidget {
  const LastOccurrencesCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<SymptomOccurrence>> occurrences = ref.watch(
      occurrenceProvider,
    );

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.health_and_safety,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  'Suas Ocorrências de Sintomas',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 180, minHeight: 20),
              child: occurrences.when(
                data: (value) {
                  final items = value;
                  if (items.isEmpty) {
                    return SingleChildScrollView(
                      child: Center(
                        child: Text(
                          'Nenhum sintoma registrado',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey[600],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  }
                  return Scrollbar(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: value.length,
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (context, index) {
                        final occurrence = value[index];
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle_outline,
                            color: Colors.green,
                          ),
                          title: Text(
                            occurrence.symptoms.isEmpty
                                ? 'Sem sintomas'
                                : occurrence.symptoms
                                    .map((s) => s.name)
                                    .join(', '),
                            style: const TextStyle(fontSize: 14),
                          ),
                          subtitle: Text(
                            dateFormatter(occurrence.registeredDate),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error:
                    (e, st) => Center(
                      child: Text(
                        'Erro ao carregar ocorrências de sintomas',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: PrimaryButton(
                label: 'Atualizar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const OccurrencesScreen(),
                    ),
                  );
                },
                fullWidth: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
