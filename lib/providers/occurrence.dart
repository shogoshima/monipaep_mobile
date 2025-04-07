import 'package:monipaep_mobile/models/symptom_occurrence.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
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
}
