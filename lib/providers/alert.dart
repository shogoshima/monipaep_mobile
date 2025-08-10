import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:monipaep_mobile/common/formatter.dart';
import 'package:monipaep_mobile/models/info_dengue.dart';
import 'package:monipaep_mobile/models/viacep.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'alert.g.dart';

@riverpod
class Alert extends _$Alert {
  @override
  Future<num?> build() async {
    final profile = ref.watch(profileProvider).value;
    if (profile == null) return null;

    final viacepResponse = await http.get(
      Uri.parse('https://viacep.com.br/ws/${profile.cep}/json/'),
    );

    if (viacepResponse.statusCode < 200 || viacepResponse.statusCode >= 300) {
      return null;
    }

    final viacepData = Viacep.fromJson(jsonDecode(viacepResponse.body));
    final now = DateTime.now();
    final week = getIsoWeekNumber(now);

    final infoDengueResponse = await http.get(
      Uri.parse(
        'https://info.dengue.mat.br/api/alertcity?geocode=${viacepData.ibge}&disease=dengue&format=json&ew_start=$week&ew_end=$week&ey_start=${now.year}&ey_end=${now.year}',
      ),
    );
    if (viacepResponse.statusCode < 200 || viacepResponse.statusCode >= 300) {
      return null;
    }

    final json = jsonDecode(infoDengueResponse.body);
    final infoDengueData = InfoDengue.fromJson(json[0]);

    return infoDengueData.nivel;
  }
}
