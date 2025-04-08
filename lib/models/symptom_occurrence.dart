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
    String? remarks,
    String? diseaseOccurrenceId,
    required bool chat,
    required DateTime registeredDate,
    required List<ProbableDisease> probableDiseases,
  }) = _SymptomOccurrence;

  factory SymptomOccurrence.fromJson(Map<String, Object?> json) =>
      _$SymptomOccurrenceFromJson(json);
}
