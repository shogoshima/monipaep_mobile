import 'package:freezed_annotation/freezed_annotation.dart';

part 'viacep.freezed.dart';
part 'viacep.g.dart';

@freezed
abstract class Viacep with _$Viacep {
  const factory Viacep({
    required String cep,
    required String logradouro,
    required String bairro,
    required String localidade,
    required String uf,
    required String ibge
  }) = _Viacep;

  factory Viacep.fromJson(Map<String, Object?> json) =>
      _$ViacepFromJson(json);
}
