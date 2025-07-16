import 'package:monipaep_mobile/models/symptom.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'symptom_list.g.dart';

@riverpod
class SymptomList extends _$SymptomList {
  @override
  Future<List<Symptom>> build() async {
    final apiClient = ref.watch(apiClientProvider);

    final json = await apiClient.get(ApiRoutes.symptom);

    if (json['symptoms'] == null) {
      return [];
    }

    return (json['symptoms'] as List)
        .map((e) => Symptom.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
