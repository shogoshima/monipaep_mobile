import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq.freezed.dart';
part 'faq.g.dart';

@freezed
abstract class Faq with _$Faq {
  const factory Faq({
    required String id,
    required String question,
    required String answer,
  }) = _Faq;

  factory Faq.fromJson(Map<String, Object?> json) => _$FaqFromJson(json);
}
