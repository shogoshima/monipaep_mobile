import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monipaep_mobile/models/models.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
abstract class Patient with _$Patient {
  const factory Patient({
    required String id,
    required String name,
    required String cpf,
    required String email,
    required String gender,
    required String phone,
    required DateTime birthdate,
    required String cep,
    required String state,
    required String city,
    required String neighborhood,
    required String street,
    required String houseNumber,
    required bool allowSms,
    required bool hasHealthPlan,
    required bool activeAccount,
    List<Comorbidity>? comorbidities,
    List<SpecialCondition>? specialConditions,
    required String status,
  }) = _Patient;

  factory Patient.fromJson(Map<String, Object?> json) =>
      _$PatientFromJson(json);
}
