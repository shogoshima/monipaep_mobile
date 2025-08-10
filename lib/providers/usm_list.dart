import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usm_list.g.dart';

@riverpod
class UsmList extends _$UsmList {
  @override
  Future<List<Usm>> build() async {
    final apiClient = ref.watch(apiClientProvider);
    final json = await apiClient.get(ApiRoutes.usms);

    if (json['usms'] == null) {
      return [];
    }

    return (json['usms'] as List)
        .map((e) => Usm.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
