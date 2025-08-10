import 'package:flutter/material.dart';
import 'package:monipaep_mobile/screens/screens.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CampaignCarousel(),
            SizedBox(height: 8.0),
            const OccurrenceReminder(),
            SizedBox(height: 8.0),
            PrimaryButton(
              label: 'Unidades de Saúde Próximas',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UsmMapScreen()),
                );
              },
            ),
            TextActionButton(
              label: 'Perguntas Frequentes',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FaqScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
