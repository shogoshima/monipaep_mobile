import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/auth.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:monipaep_mobile/screens/account_edit_screen.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Patient?> profile = ref.watch(profileProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: switch (profile) {
          AsyncData(:final value) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ProfileCard(
                  name: value!.name,
                  email: value.email,
                  onTap: () {
                    // Ação ao clicar no cartão
                  },
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Editar Perfil'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => AccountEditScreen(profile: value),
                        ),
                      );
                    },
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
              PrimaryButton(
                onPressed: () {
                  ref.read(authProvider.notifier).logout();
                },
                label: 'Sair',
              ),
            ],
          ),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}
