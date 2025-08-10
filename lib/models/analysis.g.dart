// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Analysis _$AnalysisFromJson(Map<String, dynamic> json) => _Analysis(
  healthProtocolId: json['healthProtocolId'] as String,
  diseaseId: json['diseaseId'] as String,
  diseaseName: json['diseaseName'] as String,
  gravityLevel: json['gravityLevel'] as num,
  gravityLabel: json['gravityLabel'] as String,
  instructions: json['instructions'] as String,
  comorbiditiesMatched:
      (json['comorbiditiesMatched'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  specialConditionsMatched:
      (json['specialConditionsMatched'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
  referUSM: json['referUSM'] as String?,
);

Map<String, dynamic> _$AnalysisToJson(_Analysis instance) => <String, dynamic>{
  'healthProtocolId': instance.healthProtocolId,
  'diseaseId': instance.diseaseId,
  'diseaseName': instance.diseaseName,
  'gravityLevel': instance.gravityLevel,
  'gravityLabel': instance.gravityLabel,
  'instructions': instance.instructions,
  'comorbiditiesMatched': instance.comorbiditiesMatched,
  'specialConditionsMatched': instance.specialConditionsMatched,
  'referUSM': instance.referUSM,
};
