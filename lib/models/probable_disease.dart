import 'package:freezed_annotation/freezed_annotation.dart';

part 'probable_disease.freezed.dart';
part 'probable_disease.g.dart';

@freezed
abstract class ProbableDisease with _$ProbableDisease {
  const factory ProbableDisease({
    required String id,
    required String name,
    required bool isPatientInRiskGroup,
    required num suspicionScore,
  }) = _ProbableDisease;

  factory ProbableDisease.fromJson(Map<String, Object?> json) =>
      _$ProbableDiseaseFromJson(json);
}
