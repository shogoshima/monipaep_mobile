// gpt_inputs_provider.dart
import 'package:monipaep_mobile/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gpt_inputs.g.dart';

@riverpod
class GptInputs extends _$GptInputs {
  @override
  List<GptProtocolInput> build(
    String symptomOccurrenceId,
    List<Analysis> analyses,
  ) {
    return analyses.map((analysis) {
      return GptProtocolInput(
        healthProtocolId: analysis.healthProtocolId,
        comorbiditiesMatched: analysis.comorbiditiesMatched,
        specialConditionsMatched: analysis.specialConditionsMatched,
      );
    }).toList();
  }
}
