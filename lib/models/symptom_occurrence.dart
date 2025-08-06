import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monipaep_mobile/models/models.dart';

part 'symptom_occurrence.freezed.dart';
part 'symptom_occurrence.g.dart';

@freezed
abstract class SymptomOccurrence with _$SymptomOccurrence {
  const factory SymptomOccurrence({
    required String id,
    required String patientId,
    required List<Symptom> symptoms,
    required bool chat,
    required DateTime registeredDate,
    required List<ProbableDisease> probableDiseases,
    required bool isPatientInRiskGroup,
    String? remarks,
    String? instructions,
    String? referUSM,
    String? diseaseOccurrenceId,
  }) = _SymptomOccurrence;

  factory SymptomOccurrence.fromJson(Map<String, Object?> json) =>
      _$SymptomOccurrenceFromJson(json);
}
