import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/common/theme.dart';
import 'package:monipaep_mobile/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:monipaep_mobile/providers/observer.dart';
import 'package:monipaep_mobile/screens/screens.dart';

void main() {
  runApp(ProviderScope(observers: [MyObserver()], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monipaep',
      theme: theme,
      home: const AuthWrapper(),
    );
  }
}

class AuthWrapper extends ConsumerStatefulWidget {
  const AuthWrapper({super.key});

  @override
  ConsumerState<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends ConsumerState<AuthWrapper> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ref.watch(authProvider.future),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: Colors.white, // Explicitly set background color
            body: Center(child: CircularProgressIndicator()),
          );
        } else {
          return snapshot.hasData ? const HomeScreen() : const LoginScreen();
        }
      },
    );
  }
}
