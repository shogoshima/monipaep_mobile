// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaqGroup _$FaqGroupFromJson(Map<String, dynamic> json) => _FaqGroup(
  id: json['id'] as String,
  name: json['name'] as String,
  faqs:
      (json['faqs'] as List<dynamic>)
          .map((e) => Faq.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$FaqGroupToJson(_FaqGroup instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'faqs': instance.faqs,
};
