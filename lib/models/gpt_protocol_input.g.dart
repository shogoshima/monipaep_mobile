// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpt_protocol_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GptProtocolInput _$GptProtocolInputFromJson(Map<String, dynamic> json) =>
    _GptProtocolInput(
      healthProtocolId: json['healthProtocolId'] as String,
      comorbiditiesMatched:
          (json['comorbiditiesMatched'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      specialConditionsMatched:
          (json['specialConditionsMatched'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$GptProtocolInputToJson(_GptProtocolInput instance) =>
    <String, dynamic>{
      'healthProtocolId': instance.healthProtocolId,
      'comorbiditiesMatched': instance.comorbiditiesMatched,
      'specialConditionsMatched': instance.specialConditionsMatched,
    };
