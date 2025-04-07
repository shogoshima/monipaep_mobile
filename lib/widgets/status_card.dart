import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/profile.dart';

class StatusCard extends ConsumerWidget {
  const StatusCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Patient> profile = ref.watch(profileProvider);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Status',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            switch (profile) {
              AsyncData(:final value) => Column(
                children: [
                  Icon(
                    value.status == 'Saudável'
                        ? Icons.check_circle
                        : Icons.warning,
                    color:
                        value.status == 'Saudável' ? Colors.green : Colors.red,
                    size: 40,
                  ),
                  Text(value.status),
                ],
              ),
              AsyncError() => const Text('Erro ao carregar status'),
              _ => const CircularProgressIndicator(),
            },
          ],
        ),
      ),
    );
  }
}
