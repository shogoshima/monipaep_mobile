import 'package:freezed_annotation/freezed_annotation.dart';

part 'comorbidity.freezed.dart';
part 'comorbidity.g.dart';

@freezed
abstract class Comorbidity with _$Comorbidity {
  const factory Comorbidity({
    required String id,
    required String name,
    required String description,
  }) = _Comorbidity;

  factory Comorbidity.fromJson(Map<String, Object?> json) =>
      _$ComorbidityFromJson(json);
}
