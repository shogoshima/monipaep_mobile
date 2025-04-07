import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comorbidity_list.g.dart';

@riverpod
class ComorbidityList extends _$ComorbidityList {
  @override
  Future<List<Comorbidity>> build() async {
    final apiClient = ref.watch(apiClientProvider);
    final json = await apiClient.get(ApiRoutes.comorbidities);

    if (json['comorbidityList'] == null) {
      return [];
    }

    return (json['comorbidityList'] as List)
        .map((e) => Comorbidity.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
