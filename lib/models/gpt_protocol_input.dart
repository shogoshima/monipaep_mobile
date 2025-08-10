import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpt_protocol_input.freezed.dart';
part 'gpt_protocol_input.g.dart';

@freezed
abstract class GptProtocolInput with _$GptProtocolInput {
  const factory GptProtocolInput({
    required String healthProtocolId,
    required List<String> comorbiditiesMatched,
    required List<String> specialConditionsMatched,
  }) = _GptProtocolInput;

  factory GptProtocolInput.fromJson(Map<String, Object?> json) =>
      _$GptProtocolInputFromJson(json);
}
