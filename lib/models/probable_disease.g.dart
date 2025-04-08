// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'probable_disease.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProbableDisease _$ProbableDiseaseFromJson(Map<String, dynamic> json) =>
    _ProbableDisease(
      id: json['id'] as String,
      name: json['name'] as String,
      isPatientInRiskGroup: json['isPatientInRiskGroup'] as bool,
      suspicionScore: json['suspicionScore'] as num,
    );

Map<String, dynamic> _$ProbableDiseaseToJson(_ProbableDisease instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isPatientInRiskGroup': instance.isPatientInRiskGroup,
      'suspicionScore': instance.suspicionScore,
    };
