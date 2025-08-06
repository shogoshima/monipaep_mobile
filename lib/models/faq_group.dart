import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monipaep_mobile/models/models.dart';

part 'faq_group.freezed.dart';
part 'faq_group.g.dart';

@freezed
abstract class FaqGroup with _$FaqGroup {
  const factory FaqGroup({
    required String id,
    required String name,
    required List<Faq> faqs,
  }) = _FaqGroup;

  factory FaqGroup.fromJson(Map<String, Object?> json) =>
      _$FaqGroupFromJson(json);
}
