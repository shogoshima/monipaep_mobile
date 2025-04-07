import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:monipaep_mobile/screens/screens.dart';

class ComorbiditiesCard extends ConsumerWidget {
  const ComorbiditiesCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Patient> profile = ref.watch(profileProvider);
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'Suas Comorbidades',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: switch (profile) {
              AsyncData(:final value) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        value.comorbidities.isEmpty
                            ? [
                              Center(
                                child: Text('Sem comorbidades registradas'),
                              ),
                            ]
                            : (value.comorbidities
                                .map((comorbidity) => Text(comorbidity.name))
                                .toList()),
                  ),
                ),
              ),
              AsyncError() => const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Erro ao carregar as suas comorbidades'),
              ),
              _ => const Center(child: CircularProgressIndicator()),
            },
          ),
          const SizedBox(height: 10),
          FilledButton.tonal(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UpdateComorbiditiesScreen(),
                ),
              );
            },
            child: const Text('Atualizar'),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
