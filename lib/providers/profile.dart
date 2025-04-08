import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/models/patient.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:monipaep_mobile/providers/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'profile.g.dart';

// This is the provider for the authentication state
// It is a Notifier
@riverpod
class Profile extends _$Profile {
  @override
  Future<Patient> build() async {
    final patient = ref.watch(authProvider).value;
    return patient!;
  }

  Future<void> alter(Map<String, dynamic> updateData) async {
    final apiClient = ref.read(apiClientProvider);
    final json = await apiClient.put(ApiRoutes.alter, updateData);

    if (json['patient'] == null) {
      return;
    }

    Patient patient = Patient.fromJson(json['patient']);
    state = AsyncData(patient);
  }
}
