import 'package:monipaep_mobile/common/formatter.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:monipaep_mobile/providers/message.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'occurrence.g.dart';

@riverpod
class Occurrence extends _$Occurrence {
  @override
  Future<List<SymptomOccurrence>> build() async {
    final apiClient = ref.watch(apiClientProvider);

    final json = await apiClient.get(ApiRoutes.symptomOccurrence);

    List<SymptomOccurrence> symptomOccurrences = [];
    if (json['symptomOccurrences'] == null) {
      return symptomOccurrences;
    }

    for (var occurrence in json['symptomOccurrences']) {
      symptomOccurrences.add(SymptomOccurrence.fromJson(occurrence));
    }

    return symptomOccurrences;
  }

  Future<void> delete(String id) async {
    final apiClient = ref.watch(apiClientProvider);

    await apiClient.delete(ApiRoutes.symptomOccurrence, id);

    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await build();
    });
  }

  Future<String?> analysis(List<String> symptomsIds) async {
    final apiClient = ref.read(apiClientProvider);

    final json = await apiClient.post(ApiRoutes.analysis, {
      'symptomIds': symptomsIds,
    });

    final SymptomOccurrence symptomOccurrence = SymptomOccurrence.fromJson(
      json['symptomOccurrence'],
    );

    state = AsyncData([symptomOccurrence, ...state.value ?? []]);

    if (symptomOccurrence.chat) {
      ref
          .read(messageProvider(symptomOccurrence.id).notifier)
          .sendMessage(symptomFormatter(symptomOccurrence.symptoms));

      return symptomOccurrence.id;
    }

    return null;
  }
}
