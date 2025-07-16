import 'package:freezed_annotation/freezed_annotation.dart';

part 'brasilapi.freezed.dart';
part 'brasilapi.g.dart';

@freezed
abstract class Brasilapi with _$Brasilapi {
  const factory Brasilapi({
    required String cep,
    required String state,
    required String city,
    required String neighborhood,
    required String street,
  }) = _Brasilapi;

  factory Brasilapi.fromJson(Map<String, Object?> json) =>
      _$BrasilapiFromJson(json);
}
