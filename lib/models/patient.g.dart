// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Patient _$PatientFromJson(Map<String, dynamic> json) => _Patient(
  id: json['id'] as String,
  name: json['name'] as String,
  cpf: json['cpf'] as String,
  email: json['email'] as String,
  gender: json['gender'] as String,
  phone: json['phone'] as String,
  allowSms: json['allowSms'] as bool,
  workAddress: json['workAddress'] as String?,
  homeAddress: json['homeAddress'] as String,
  neighborhood: json['neighborhood'] as String,
  houseNumber: json['houseNumber'] as num,
  hasHealthPlan: json['hasHealthPlan'] as bool,
  birthdate: DateTime.parse(json['birthdate'] as String),
  status: json['status'] as String,
  activeAccount: json['activeAccount'] as bool,
  comorbidities:
      (json['comorbidities'] as List<dynamic>)
          .map((e) => Comorbidity.fromJson(e as Map<String, dynamic>))
          .toList(),
  specialConditions:
      (json['specialConditions'] as List<dynamic>)
          .map((e) => SpecialCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$PatientToJson(_Patient instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cpf': instance.cpf,
  'email': instance.email,
  'gender': instance.gender,
  'phone': instance.phone,
  'allowSms': instance.allowSms,
  'workAddress': instance.workAddress,
  'homeAddress': instance.homeAddress,
  'neighborhood': instance.neighborhood,
  'houseNumber': instance.houseNumber,
  'hasHealthPlan': instance.hasHealthPlan,
  'birthdate': instance.birthdate.toIso8601String(),
  'status': instance.status,
  'activeAccount': instance.activeAccount,
  'comorbidities': instance.comorbidities,
  'specialConditions': instance.specialConditions,
};
