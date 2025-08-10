import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'gpt_protocol.g.dart';

@riverpod
class GptProtocol extends _$GptProtocol {
  @override
  Future<String> build(
    String symptomOccurrenceId,
    List<GptProtocolInput> data,
  ) async {
    final apiClient = ref.watch(apiClientProvider);
    final json = await apiClient.post(
      '${ApiRoutes.symptomOccurrence}/$symptomOccurrenceId/protocol',
      {'data': data.map((e) => e.toJson()).toList()},
    );

    if (json['text'] == null) {
      return '';
    }

    return json['text'];
  }
}
