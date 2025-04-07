import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/comorbidity_list.dart';
import 'package:monipaep_mobile/providers/profile.dart';

class UpdateComorbiditiesScreen extends ConsumerStatefulWidget {
  const UpdateComorbiditiesScreen({super.key});

  @override
  ConsumerState<UpdateComorbiditiesScreen> createState() =>
      _UpdateComorbiditiesScreenState();
}

class _UpdateComorbiditiesScreenState
    extends ConsumerState<UpdateComorbiditiesScreen> {
  List<Comorbidity> selectedComorbidities = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final profile = ref.read(profileProvider).value;
    if (profile != null && selectedComorbidities.isEmpty) {
      selectedComorbidities = List<Comorbidity>.from(profile.comorbidities);
    }
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<Comorbidity>> comorbidities = ref.watch(
      comorbidityListProvider,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Atualizar Comorbidades')),
      body: Center(
        child: switch (comorbidities) {
          AsyncData(:final value) => SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Selecione as suas comorbidades',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children:
                        value
                            .map(
                              (comorbidity) => CheckboxListTile(
                                title: Text(comorbidity.name),
                                subtitle: Text(comorbidity.description),
                                value: selectedComorbidities.any(
                                  (c) => c.id == comorbidity.id,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    if (value == true) {
                                      selectedComorbidities.add(comorbidity);
                                    } else {
                                      selectedComorbidities.removeWhere(
                                        (c) => c.id == comorbidity.id,
                                      );
                                    }
                                  });
                                },
                              ),
                            )
                            .toList(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    log('Comorbidades selecionadas: $selectedComorbidities');
                    ref.read(profileProvider.notifier).alter({
                      'comorbidities':
                          selectedComorbidities.map((e) => e.id).toList(),
                    });

                    // Show a success message
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Comorbidades atualizadas com sucesso!'),
                      ),
                    );

                    Navigator.pop(context);
                  },
                  child: const Text('Salvar'),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          AsyncError() => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Erro ao carregar comorbidades'),
          ),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}
