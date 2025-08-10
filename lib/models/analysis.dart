import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis.freezed.dart';
part 'analysis.g.dart';

@freezed
abstract class Analysis with _$Analysis {
  const factory Analysis({
    required String healthProtocolId,
    required String diseaseId,
    required String diseaseName,
    required num gravityLevel,
    required String gravityLabel,
    required String instructions,
    required List<String> comorbiditiesMatched,
    required List<String> specialConditionsMatched,
    String? referUSM,
  }) = _Analysis;

  factory Analysis.fromJson(Map<String, Object?> json) =>
      _$AnalysisFromJson(json);
}
