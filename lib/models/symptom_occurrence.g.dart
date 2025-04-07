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
          (json['symptoms'] as List<dynamic>).map((e) => e as String).toList(),
      remarks: json['remarks'] as String?,
      diseaseOccurrenceId: json['diseaseOccurrenceId'] as String?,
      registeredDate: DateTime.parse(json['registeredDate'] as String),
    );

Map<String, dynamic> _$SymptomOccurrenceToJson(_SymptomOccurrence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patientId': instance.patientId,
      'symptoms': instance.symptoms,
      'remarks': instance.remarks,
      'diseaseOccurrenceId': instance.diseaseOccurrenceId,
      'registeredDate': instance.registeredDate.toIso8601String(),
    };
