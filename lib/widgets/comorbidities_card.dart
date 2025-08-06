import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:monipaep_mobile/screens/screens.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class ComorbiditiesCard extends ConsumerWidget {
  const ComorbiditiesCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Patient> profile = ref.watch(profileProvider);

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
                Icon(Icons.healing, color: Theme.of(context).primaryColor),
                const SizedBox(width: 8),
                Text(
                  'Suas Comorbidades',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 180, minHeight: 20),
              child: profile.when(
                data: (patient) {
                  final items = patient.comorbidities ?? [];
                  if (items.isEmpty) {
                    return SingleChildScrollView(
                      child: Center(
                        child: Text(
                          'Nenhuma comorbidade registrada',
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
                      itemCount: items.length,
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (context, index) {
                        final comorbidity = items[index];
                        return Row(
                          children: [
                            Icon(
                              Icons.bloodtype,
                              size: 20,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                comorbidity.name,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error:
                    (error, stack) => Center(
                      child: Text(
                        'Erro ao carregar comorbidades',
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
                      builder: (_) => const UpdateComorbiditiesScreen(),
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
