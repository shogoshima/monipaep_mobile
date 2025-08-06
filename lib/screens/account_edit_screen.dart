import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:monipaep_mobile/common/formatter.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:monipaep_mobile/widgets/widgets.dart';

class AccountEditScreen extends ConsumerStatefulWidget {
  const AccountEditScreen({super.key, required this.profile});

  final Patient profile;

  @override
  ConsumerState<AccountEditScreen> createState() => _AccountEditScreenState();
}

class _AccountEditScreenState extends ConsumerState<AccountEditScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _cpfController;

  final List<String> genderOptions = ['Feminino', 'Masculino', 'Outro'];
  late final TextEditingController _genderController;

  late final TextEditingController _phoneController;
  late final TextEditingController _birthdateController;

  late final TextEditingController _zipCodeController;
  late final TextEditingController _stateController;
  late final TextEditingController _cityController;
  late final TextEditingController _neighborhoodController;
  late final TextEditingController _streetController;
  late final TextEditingController _numberController;
  late final TextEditingController _complementController;

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
    mask: '##',
    filter: {"#": RegExp(r'[A-Z]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.profile.name);
    _emailController = TextEditingController(text: widget.profile.email);
    _cpfController = TextEditingController(text: widget.profile.cpf);
    _birthdateController = TextEditingController(
      text: dateFormatter(widget.profile.birthdate),
    );
    _genderController = TextEditingController(text: widget.profile.gender);
    _phoneController = TextEditingController(text: widget.profile.phone);
    _zipCodeController = TextEditingController(text: widget.profile.cep);
    _stateController = TextEditingController(text: widget.profile.state);
    _cityController = TextEditingController(text: widget.profile.city);
    _neighborhoodController = TextEditingController(
      text: widget.profile.neighborhood,
    );
    _streetController = TextEditingController(text: widget.profile.street);
    _numberController = TextEditingController(text: widget.profile.houseNumber);
    _complementController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(profileProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Perfil')),
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
                  child: profile.when(
                    data:
                        (value) => Column(
                          children: [
                            TextFormField(
                              controller: _nameController,
                              decoration: const InputDecoration(
                                labelText: 'Nome *',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Digite o seu nome';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              controller: _emailController,
                              enabled: false,
                              decoration: const InputDecoration(
                                labelText: 'Email *',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Digite o seu email';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              controller: _cpfController,
                              enabled: false,
                              inputFormatters: [cpfFormatter],
                              decoration: const InputDecoration(
                                labelText: 'CPF *',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Digite o seu CPF';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            DropdownMenu(
                              enabled: false,
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
                                        (e) => DropdownMenuEntry(
                                          value: e,
                                          label: e,
                                        ),
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
                              decoration: const InputDecoration(
                                labelText: 'CEP *',
                              ),
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
                                  try {
                                    final response = await http.get(
                                      Uri.parse(
                                        'https://brasilapi.com.br/api/cep/v2/$cep',
                                      ),
                                    );
                                    final Brasilapi data = Brasilapi.fromJson(
                                      jsonDecode(response.body),
                                    );
                                    // Parse the JSON data and update the address fields
                                    _streetController.text = data.street;
                                    _neighborhoodController.text =
                                        data.neighborhood;
                                    _cityController.text = data.city;
                                    _stateController.text = data.state;
                                  } catch (e) {
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
                              controller: _stateController,
                              inputFormatters: [stateFormatter],
                              decoration: const InputDecoration(
                                labelText: 'Estado *',
                              ),
                            ),
                            TextFormField(
                              controller: _cityController,
                              decoration: const InputDecoration(
                                labelText: 'Cidade *',
                              ),
                            ),
                            TextFormField(
                              controller: _neighborhoodController,
                              decoration: const InputDecoration(
                                labelText: 'Bairro *',
                              ),
                            ),
                            TextFormField(
                              controller: _streetController,
                              decoration: const InputDecoration(
                                labelText: 'Rua *',
                              ),
                            ),
                            TextFormField(
                              controller: _numberController,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: const InputDecoration(
                                labelText: 'Número *',
                              ),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.contains(RegExp(r'[^\d]'))) {
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
                            PrimaryButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Process the data
                                  try {
                                    ref.read(profileProvider.notifier).alter({
                                      'name': _nameController.text,
                                      'phone': _phoneController.text,
                                      'birthdate': parseDate(
                                        _birthdateController.text,
                                      ).toIso8601String(),
                                      'cep': _zipCodeController.text,
                                      'state': _stateController.text,
                                      'city': _cityController.text,
                                      'neighborhood':
                                          _neighborhoodController.text,
                                      'street': _streetController.text,
                                      'houseNumber': _numberController.text,
                                    });

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Dados atualizados com sucesso!',
                                        ),
                                      ),
                                    );

                                    Navigator.pop(context);
                                  } catch (e) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Erro ao atualizar dados: $e',
                                        ),
                                      ),
                                    );
                                  }
                                }
                              },
                              label: 'Atualizar',
                            ),
                          ],
                        ),
                    loading:
                        () => const Center(child: CircularProgressIndicator()),
                    error: (err, stack) => Center(child: Text('Erro: $err')),
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
