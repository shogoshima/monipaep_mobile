import 'package:flutter/material.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [StatusCard(), ComorbiditiesCard(), SpecialConditionsCard()],
    );
  }
}
