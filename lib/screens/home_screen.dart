import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/providers/occurrence.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:monipaep_mobile/screens/screens.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _currentPageIndex = 0;
  final List<String> _titles = ['Home', 'Minha Saúde', 'Minha Conta'];
  void _onDestinationSelected(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  bool wideScreen = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    wideScreen = width > 600;
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(profileProvider);
    ref.watch(occurrenceProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          _titles[_currentPageIndex],
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Ação ao clicar no botão de notificações
            },
          ),
        ],
      ),
      body: Row(
        children: [
          if (wideScreen) // Mostrando a barra lateral condicionalmente
            DisappearingNavigationRail(
              selectedIndex: _currentPageIndex,
              onDestinationSelected: _onDestinationSelected,
            ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child:
                    const <Widget>[
                      DashboardScreen(),
                      HealthScreen(),
                      AccountScreen(),
                    ][_currentPageIndex],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          wideScreen // Mostrando a barra inferior condicionalmente
              ? null
              : DisappearingBottomNavigationBar(
                selectedIndex: _currentPageIndex,
                onDestinationSelected: _onDestinationSelected,
              ),
    );
  }
}
