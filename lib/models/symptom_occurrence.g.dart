// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_occurrence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SymptomOccurrence _$SymptomOccurrenceFromJson(Map<String, dynamic> json) =>
    _SymptomOccurrence(
      id: json['id'] as String,
      patientId: json['patientId'] as String,
      symptoms:
          (json['symptoms'] as List<dynamic>)
              .map((e) => Symptom.fromJson(e as Map<String, dynamic>))
              .toList(),
      chat: json['chat'] as bool,
      registeredDate: DateTime.parse(json['registeredDate'] as String),
      probableDiseases:
          (json['probableDiseases'] as List<dynamic>)
              .map((e) => ProbableDisease.fromJson(e as Map<String, dynamic>))
              .toList(),
      isPatientInRiskGroup: json['isPatientInRiskGroup'] as bool,
      remarks: json['remarks'] as String?,
      instructions: json['instructions'] as String?,
      referUSM: json['referUSM'] as String?,
      diseaseOccurrenceId: json['diseaseOccurrenceId'] as String?,
    );

Map<String, dynamic> _$SymptomOccurrenceToJson(_SymptomOccurrence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'symptoms': instance.symptoms,
      'chat': instance.chat,
      'registeredDate': instance.registeredDate.toIso8601String(),
      'probableDiseases': instance.probableDiseases,
      'isPatientInRiskGroup': instance.isPatientInRiskGroup,
      'remarks': instance.remarks,
      'instructions': instance.instructions,
      'referUSM': instance.referUSM,
      'diseaseOccurrenceId': instance.diseaseOccurrenceId,
    };
