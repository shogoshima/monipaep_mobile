import 'package:flutter/material.dart';

class DisappearingBottomNavigationBar extends StatelessWidget {
  const DisappearingBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home_outlined),
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.medical_services_outlined),
          icon: Icon(Icons.medical_services),
          label: 'Minha Saúde',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.account_circle_outlined),
          icon: Icon(Icons.account_circle),
          label: 'Minha Conta',
        ),
      ],
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}
