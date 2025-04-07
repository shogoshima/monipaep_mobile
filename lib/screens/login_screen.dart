import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monipaep_mobile/providers/auth.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:monipaep_mobile/screens/signup_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var maskFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Bem-vindo ao', style: TextStyle(fontSize: 20)),
          const Text(
            'MoniPaEp',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    inputFormatters: [maskFormatter],
                    keyboardType: TextInputType.number,
                    maxLength: 14,
                    onChanged: (value) {
                      if (value.length == 14) {
                        FocusScope.of(context).unfocus();
                      }
                    },
                    controller: _cpfController,
                    decoration: const InputDecoration(labelText: 'CPF *'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Digite o seu CPF';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Password *'),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Digite a sua senha';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Esqueci minha senha'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(authProvider.notifier)
                          .login('123.456.789-00', 'Password@123');
                      // if (_formKey.currentState!.validate()) {
                      //   log(
                      //     'Login: ${_cpfController.text} ${_passwordController.text}',
                      //   );
                      //   ref
                      //       .read(authProvider.notifier)
                      //       .login(
                      //         _cpfController.text,
                      //         _passwordController.text,
                      //       );
                      // }
                    },
                    child: const Text('Entrar'),
                  ),
                  const SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      text: 'Não possui uma conta? ',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Cadastre-se',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const SignupScreen(),
                                    ),
                                  );
                                },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
