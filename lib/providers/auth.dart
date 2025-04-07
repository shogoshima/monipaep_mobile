import 'package:monipaep_mobile/models/models.dart';
import 'package:monipaep_mobile/providers/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Necessary for code-generation to work
part 'auth.g.dart';

// This is the provider for the authentication state
// It is a Notifier
@riverpod
class Auth extends _$Auth {
  @override
  Future<Patient?> build() async {
    final apiClient = ref.watch(apiClientProvider);

    final json = await apiClient.get(ApiRoutes.me);

    if (json == null) {
      await apiClient.removeAccessToken();
      await apiClient.removeRefreshToken();
      return null;
    }

    return Patient.fromJson(json);
  }

  // This method is used to log in the user
  Future<void> login(String cpf, String password) async {
    // It is better to use ref.read here instead of ref.watch
    // because we don't want to listen to the changes of the apiClientProvider
    final apiClient = ref.read(apiClientProvider);

    // The POST request will return a Patient matching the new application state
    final json = await apiClient.post(ApiRoutes.login, {
      'cpf': cpf,
      'password': password,
    });

    // We update the local cache to match the new state.
    // This will notify all listeners.
    await apiClient.setAccessToken(json['token']);
    await apiClient.setRefreshToken(json['refreshToken']['id']);

    state = AsyncData(Patient.fromJson(json['patient']));
  }

  // This method is used to log out the user
  Future<void> logout() async {
    final apiClient = ref.read(apiClientProvider);
    await apiClient.removeAccessToken();
    await apiClient.removeRefreshToken();

    // We update the local cache to match the new state.
    state = const AsyncData(null);
  }
}
