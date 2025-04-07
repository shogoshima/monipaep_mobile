import 'package:flutter/material.dart';
import 'package:monipaep_mobile/screens/screens.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CampaignCarousel(),
            const OccurrenceReminder(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OccurrencesScreen(),
                  ),
                );
              },
              child: const Text('Atualizar Sintomas'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OccurrencesScreen(),
                  ),
                );
              },
              child: const Text('Perguntas Frequentes'),
            ),
          ],
        ),
      ),
    );
  }
}
