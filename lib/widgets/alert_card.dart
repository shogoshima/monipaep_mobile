import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/providers/alert.dart';

class AlertCard extends ConsumerWidget {
  const AlertCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<num?> alertLevel = ref.watch(alertProvider);
    return Center(
      child: switch (alertLevel) {
        AsyncData(:final value) =>
          value != null ? Card(child: Text(value.toString())) : SizedBox(),
        AsyncError() => const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Erro ao carregar sintomas'),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
