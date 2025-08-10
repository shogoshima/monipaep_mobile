import 'package:freezed_annotation/freezed_annotation.dart';

part 'usm.freezed.dart';
part 'usm.g.dart';

@freezed
abstract class Usm with _$Usm {
  const factory Usm({
    required String id,
    required String name,
    required String state,
    required String city,
    required String neighborhood,
    String? street,
    String? number,
    List<String>? weekdayDescriptions,
    required double latitude,
    required double longitude,
  }) = _Usm;

  factory Usm.fromJson(Map<String, Object?> json) => _$UsmFromJson(json);
}
