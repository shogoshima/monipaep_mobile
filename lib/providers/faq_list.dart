import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'faq_list.g.dart';

@riverpod
class FaqList extends _$FaqList {
  @override
  Future<List<FaqGroup>> build() async {
    final apiClient = ref.watch(apiClientProvider);

    final json = await apiClient.get(ApiRoutes.faq);

    if (json['groups'] == null) {
      return [];
    }

    return (json['groups'] as List)
        .map((e) => FaqGroup.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
