import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'special_condition_list.g.dart';

@riverpod
class SpecialConditionList extends _$SpecialConditionList {
  @override
  Future<List<SpecialCondition>> build() async {
    final apiClient = ref.watch(apiClientProvider);
    final json = await apiClient.get(ApiRoutes.specialConditions);

    if (json['specialConditionList'] == null) {
      return [];
    }

    return (json['specialConditionList'] as List)
        .map((e) => SpecialCondition.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
