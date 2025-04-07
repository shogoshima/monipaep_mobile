import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final List<String> genderOptions = ['Feminino', 'Masculino', 'Outro'];
  final TextEditingController _genderController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();

  final TextEditingController _zipCodeController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _neighborhoodController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _complementController = TextEditingController();

  var cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  var phoneFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  var birthdateFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  var zipCodeFormatter = MaskTextInputFormatter(
    mask: '#####-###',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  var stateFormatter = MaskTextInputFormatter(
    mask: 'AA',
    filter: {"#": RegExp(r'[A-Z]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                        controller: _nameController,
                        decoration: const InputDecoration(labelText: 'Nome *'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite o seu nome';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(labelText: 'Email *'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite o seu email';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _cpfController,
                        inputFormatters: [cpfFormatter],
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
                        decoration: const InputDecoration(labelText: 'Senha *'),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite a sua senha';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _confirmPasswordController,
                        decoration: const InputDecoration(
                          labelText: 'Confirme a Senha *',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Confirme a sua senha';
                          }
                          if (_passwordController.text !=
                              _confirmPasswordController.text) {
                            return 'As senhas não coincidem';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownMenu(
                        initialSelection: genderOptions[2],
                        width: double.infinity,
                        inputDecorationTheme: InputDecorationTheme(
                          filled: true,
                        ),
                        controller: _genderController,
                        label: const Text('Gênero *'),
                        onSelected:
                            (value) => setState(() {
                              _genderController.text = value!;
                            }),
                        dropdownMenuEntries:
                            genderOptions
                                .map(
                                  (e) => DropdownMenuEntry(value: e, label: e),
                                )
                                .toList(),
                      ),
                      TextFormField(
                        controller: _phoneController,
                        inputFormatters: [phoneFormatter],
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Telefone *',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite o seu telefone';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _birthdateController,
                        inputFormatters: [birthdateFormatter],
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Data de Nascimento *',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite a sua data de nascimento';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _zipCodeController,
                        inputFormatters: [zipCodeFormatter],
                        decoration: const InputDecoration(labelText: 'CEP *'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite o seu CEP';
                          }
                          return null;
                        },
                        onChanged: (value) async {
                          if (value.length == 9) {
                            FocusScope.of(context).unfocus();
                            final cep = value.replaceAll('-', '');
                            final response = await http.get(
                              Uri.parse('https://viacep.com.br/ws/$cep/json/'),
                            );
                            if (response.statusCode == 200) {
                              final Map<String, dynamic> json = jsonDecode(
                                response.body,
                              );
                              // Parse the JSON data and update the address fields
                              _streetController.text = json['logradouro'];
                              _neighborhoodController.text = json['bairro'];
                              _cityController.text = json['localidade'];
                              _stateController.text = json['uf'];
                            } else {
                              if (!context.mounted) return;
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Erro ao buscar o CEP'),
                                ),
                              );
                            }
                          }
                        },
                      ),
                      TextFormField(
                        enabled: false,
                        controller: _stateController,
                        decoration: const InputDecoration(
                          labelText: 'Estado *',
                        ),
                      ),
                      TextFormField(
                        enabled: false,
                        controller: _cityController,
                        decoration: const InputDecoration(
                          labelText: 'Cidade *',
                        ),
                      ),
                      TextFormField(
                        enabled: false,
                        controller: _neighborhoodController,
                        decoration: const InputDecoration(
                          labelText: 'Bairro *',
                        ),
                      ),
                      TextFormField(
                        enabled: false,
                        controller: _streetController,
                        decoration: const InputDecoration(labelText: 'Rua *'),
                      ),
                      TextFormField(
                        controller: _numberController,
                        decoration: const InputDecoration(
                          labelText: 'Número *',
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite o número da residência';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: _complementController,
                        decoration: const InputDecoration(
                          labelText: 'Complemento',
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process the data
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processando...')),
                            );
                          }
                        },
                        child: const Text('Cadastrar'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
