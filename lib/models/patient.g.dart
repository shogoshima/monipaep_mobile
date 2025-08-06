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
  birthdate: DateTime.parse(json['birthdate'] as String),
  cep: json['cep'] as String,
  state: json['state'] as String,
  city: json['city'] as String,
  neighborhood: json['neighborhood'] as String,
  street: json['street'] as String,
  houseNumber: json['houseNumber'] as String,
  allowSms: json['allowSms'] as bool,
  hasHealthPlan: json['hasHealthPlan'] as bool,
  activeAccount: json['activeAccount'] as bool,
  comorbidities:
      (json['comorbidities'] as List<dynamic>?)
          ?.map((e) => Comorbidity.fromJson(e as Map<String, dynamic>))
          .toList(),
  specialConditions:
      (json['specialConditions'] as List<dynamic>?)
          ?.map((e) => SpecialCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
  status: json['status'] as String,
);

Map<String, dynamic> _$PatientToJson(_Patient instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cpf': instance.cpf,
  'email': instance.email,
  'gender': instance.gender,
  'phone': instance.phone,
  'birthdate': instance.birthdate.toIso8601String(),
  'cep': instance.cep,
  'state': instance.state,
  'city': instance.city,
  'neighborhood': instance.neighborhood,
  'street': instance.street,
  'houseNumber': instance.houseNumber,
  'allowSms': instance.allowSms,
  'hasHealthPlan': instance.hasHealthPlan,
  'activeAccount': instance.activeAccount,
  'comorbidities': instance.comorbidities,
  'specialConditions': instance.specialConditions,
  'status': instance.status,
};
