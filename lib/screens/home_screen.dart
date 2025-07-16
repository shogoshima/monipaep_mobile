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
  final PageController _pageController = PageController();
  final List<String> _titles = ['Home', 'Minha Saúde', 'Minha Conta'];

  bool wideScreen = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    wideScreen = width > 600;
  }

  void _onDestinationSelected(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // When the user swipes, update the selected index
  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
            // Directly use the PageView to manage the pages.
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              physics: const ClampingScrollPhysics(),
              children: const [
                DashboardScreen(),
                HealthScreen(),
                AccountScreen(),
              ],
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
