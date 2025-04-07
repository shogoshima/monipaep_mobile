import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_condition.freezed.dart';
part 'special_condition.g.dart';

@freezed
abstract class SpecialCondition with _$SpecialCondition {
  const factory SpecialCondition({
    required String id,
    required String name,
    required String description,
  }) = _SpecialCondition;

  factory SpecialCondition.fromJson(Map<String, Object?> json) =>
      _$SpecialConditionFromJson(json);
}
