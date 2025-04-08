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
      remarks: json['remarks'] as String?,
      diseaseOccurrenceId: json['diseaseOccurrenceId'] as String?,
      chat: json['chat'] as bool,
      registeredDate: DateTime.parse(json['registeredDate'] as String),
      probableDiseases:
          (json['probableDiseases'] as List<dynamic>)
              .map((e) => ProbableDisease.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$SymptomOccurrenceToJson(_SymptomOccurrence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'symptoms': instance.symptoms,
      'remarks': instance.remarks,
      'diseaseOccurrenceId': instance.diseaseOccurrenceId,
      'chat': instance.chat,
      'registeredDate': instance.registeredDate.toIso8601String(),
      'probableDiseases': instance.probableDiseases,
    };
