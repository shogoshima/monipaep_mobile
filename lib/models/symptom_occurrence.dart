import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom_occurrence.freezed.dart';
part 'symptom_occurrence.g.dart';

@freezed
abstract class SymptomOccurrence with _$SymptomOccurrence {
  const factory SymptomOccurrence({
    required String id,
    required String patientId,
    required List<String> symptoms,
    String? remarks,
    String? diseaseOccurrenceId,
    required DateTime registeredDate,
  }) = _SymptomOccurrence;

  factory SymptomOccurrence.fromJson(Map<String, Object?> json) =>
      _$SymptomOccurrenceFromJson(json);
}
