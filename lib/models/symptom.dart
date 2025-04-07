import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom.freezed.dart';
part 'symptom.g.dart';

@freezed
abstract class Symptom with _$Symptom {
  const factory Symptom({
    required String id,
    required String name,
    required String description,
  }) = _Symptom;

  factory Symptom.fromJson(Map<String, Object?> json) =>
      _$SymptomFromJson(json);
}
