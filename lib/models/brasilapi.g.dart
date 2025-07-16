// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brasilapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Brasilapi _$BrasilapiFromJson(Map<String, dynamic> json) => _Brasilapi(
  cep: json['cep'] as String,
  state: json['state'] as String,
  city: json['city'] as String,
  neighborhood: json['neighborhood'] as String,
  street: json['street'] as String,
);

Map<String, dynamic> _$BrasilapiToJson(_Brasilapi instance) =>
    <String, dynamic>{
      'cep': instance.cep,
      'state': instance.state,
      'city': instance.city,
      'neighborhood': instance.neighborhood,
      'street': instance.street,
    };
