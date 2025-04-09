// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_dengue.freezed.dart';
part 'info_dengue.g.dart';

@freezed
abstract class InfoDengue with _$InfoDengue {
  const factory InfoDengue({required num nivel}) = _InfoDengue;

  factory InfoDengue.fromJson(Map<String, Object?> json) =>
      _$InfoDengueFromJson(json);
}
