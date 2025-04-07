import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/auth.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:monipaep_mobile/widgets/profile_card.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Patient?> profile = ref.watch(profileProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: switch (profile) {
                AsyncData(:final value) => ProfileCard(
                  name: value!.name,
                  email: value.email,
                  onTap: () {
                    // Ação ao clicar no cartão
                  },
                ),
                AsyncError() => const Text(
                  'Oops, something unexpected happened',
                ),
                _ => const CircularProgressIndicator(),
              },
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Editar Perfil'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('Alterar Senha'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Configurações'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Ajuda'),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(authProvider.notifier).logout();
              },
              child: const Text('Sair'),
            ),
          ],
        ),
      ),
    );
  }
}
