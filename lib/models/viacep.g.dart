// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viacep.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Viacep _$ViacepFromJson(Map<String, dynamic> json) => _Viacep(
  cep: json['cep'] as String,
  logradouro: json['logradouro'] as String,
  bairro: json['bairro'] as String,
  localidade: json['localidade'] as String,
  uf: json['uf'] as String,
  ibge: json['ibge'] as String,
);

Map<String, dynamic> _$ViacepToJson(_Viacep instance) => <String, dynamic>{
  'cep': instance.cep,
  'logradouro': instance.logradouro,
  'bairro': instance.bairro,
  'localidade': instance.localidade,
  'uf': instance.uf,
  'ibge': instance.ibge,
};
