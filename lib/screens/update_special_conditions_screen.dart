import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:monipaep_mobile/providers/special_condition_list.dart';
import 'package:monipaep_mobile/widgets/buttons.dart';

class UpdateSpecialConditionsScreen extends ConsumerStatefulWidget {
  const UpdateSpecialConditionsScreen({super.key});

  @override
  ConsumerState<UpdateSpecialConditionsScreen> createState() =>
      _UpdateComorbiditiesScreenState();
}

class _UpdateComorbiditiesScreenState
    extends ConsumerState<UpdateSpecialConditionsScreen> {
  List<SpecialCondition> selectedSpecialConditions = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final profile = ref.read(profileProvider).value;
    if (profile != null && selectedSpecialConditions.isEmpty) {
      selectedSpecialConditions = List<SpecialCondition>.from(
        profile.specialConditions ?? [],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<SpecialCondition>> specialConditions = ref.watch(
      specialConditionListProvider,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Atualizar Condições Especiais')),
      body: Center(
        child: switch (specialConditions) {
          AsyncData(:final value) => SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Selecione as suas condições especiais',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children:
                        value
                            .map(
                              (specialCondition) => CheckboxListTile(
                                title: Text(specialCondition.name),
                                subtitle: Text(specialCondition.description),
                                value: selectedSpecialConditions.any(
                                  (c) => c.id == specialCondition.id,
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    if (value == true) {
                                      selectedSpecialConditions.add(
                                        specialCondition,
                                      );
                                    } else {
                                      selectedSpecialConditions.removeWhere(
                                        (c) => c.id == specialCondition.id,
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
                PrimaryButton(
                  onPressed: () {
                    ref.read(profileProvider.notifier).alter({
                      'specialConditions':
                          selectedSpecialConditions.map((e) => e.id).toList(),
                    });

                    // Show a success message
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Condições especiais atualizadas com sucesso!',
                        ),
                      ),
                    );
                    Navigator.pop(context);
                  },
                  label: 'Salvar',
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          AsyncError() => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Erro ao carregar condições especiais'),
          ),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}
