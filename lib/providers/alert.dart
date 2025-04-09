import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:monipaep_mobile/common/formatter.dart';
import 'package:monipaep_mobile/models/info_dengue.dart';
import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/models/viacep.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:monipaep_mobile/providers/profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'alert.g.dart';

// This is the provider for the authentication state
// It is a Notifier
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
    final week = getWeekNumber(now);

    final infoDengueResponse = await http.get(
      Uri.parse(
        'https://info.dengue.mat.br/api/alertcity?geocode=${viacepData.ibge}&disease=dengue&format=csv&ew_start=$week&ew_end=$week&ey_start=${now.year}&ey_end=${now.year}',
      ),
    );

    if (viacepResponse.statusCode < 200 || viacepResponse.statusCode >= 300) {
      return null;
    }

    final infoDengueData = InfoDengue.fromJson(
      jsonDecode(infoDengueResponse.body),
    );

    return infoDengueData.nivel;
  }
}
