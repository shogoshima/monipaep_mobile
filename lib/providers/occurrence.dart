import 'dart:developer';

import 'package:monipaep_mobile/models/models.dart';
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

    state = AsyncValue.loading();
    try {
      await apiClient.delete(ApiRoutes.symptomOccurrence, id);
      ref.invalidateSelf();
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<String?> create(List<Symptom> symptoms, String? remarks) async {
    final apiClient = ref.read(apiClientProvider);

    state = AsyncValue.loading();
    try {
      final json = await apiClient.post(ApiRoutes.symptomOccurrence, {
        'symptoms': symptoms.toList(),
        'remarks': remarks,
      });

      log(json.toString());

      final SymptomOccurrence symptomOccurrence = SymptomOccurrence.fromJson(
        json['symptomOccurrence'],
      );

      state = AsyncData([symptomOccurrence, ...state.value ?? []]);
    } catch (e, st) {
      state = AsyncError(e, st);
    }

    return null;
  }

  Future<String?> getAnalysis(String symptomOccurrenceId) async {
    final apiClient = ref.read(apiClientProvider);

    state = AsyncValue.loading();
    try {
      final json = await apiClient.get(
        '${ApiRoutes.symptomOccurrence}/$symptomOccurrenceId/analysis',
      );
      log(json.toString());

      final SymptomOccurrence symptomOccurrence = SymptomOccurrence.fromJson(
        json['symptomOccurrence'],
      );

      // update existing occurrence inside the list
      final occurrences = state.value ?? [];
      final index = occurrences.indexWhere(
        (occ) => occ.id == symptomOccurrence.id,
      );
      if (index != -1) {
        occurrences[index] = symptomOccurrence;
      } else {
        occurrences.add(symptomOccurrence);
      }

      state = AsyncData(occurrences);
    } catch (e, st) {
      state = AsyncError(e, st);
    }

    return null;
  }
}
