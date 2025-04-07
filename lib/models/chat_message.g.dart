// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  id: json['id'] as String,
  symptomOccurrenceId: json['symptomOccurrenceId'] as String?,
  role: json['role'] as String,
  message: json['message'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symptomOccurrenceId': instance.symptomOccurrenceId,
      'role': instance.role,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
    };
