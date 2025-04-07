import 'package:flutter/material.dart';

class DisappearingNavigationRail extends StatelessWidget {
  const DisappearingNavigationRail({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      groupAlignment: -1,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          selectedIcon: Icon(Icons.home_outlined),
          icon: Icon(Icons.home),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          selectedIcon: Icon(Icons.medical_services_outlined),
          icon: Icon(Icons.medical_services),
          label: Text('Minha Saúde'),
        ),
        NavigationRailDestination(
          selectedIcon: Icon(Icons.account_circle_outlined),
          icon: Icon(Icons.account_circle),
          label: Text('Minha Conta'),
        ),
      ],
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}
