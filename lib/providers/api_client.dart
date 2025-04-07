import 'dart:convert';
import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

// Necessary for code-generation to work
part 'api_client.g.dart';

const String baseUrl = 'http://192.168.15.6:3333';

class ApiRoutes {
  static String signup = '/patients/signup';
  static String login = '/patients/login';
  static String me = '/patients/me';
  static String alter = '/patients/alter';

  static String chat = '/chat';
  static String evaluate = '/chat/evalue';

  static String symptom = '/symptom';
  static String comorbidities = '/comorbidity';
  static String specialConditions = '/specialcondition';

  static String symptomOccurrence = '/symptomoccurrence';

  static String refreshToken = '/refreshtoken';
}

@riverpod
class ApiClient extends _$ApiClient {
  late final FlutterSecureStorage _storage;

  @override
  ApiClient build() {
    _storage = const FlutterSecureStorage();
    return this;
  }

  Future<void> setAccessToken(String token) async {
    await _storage.write(key: 'accessToken', value: token);
  }

  Future<void> removeAccessToken() async {
    await _storage.delete(key: 'accessToken');
  }

  Future<void> setRefreshToken(String token) async {
    await _storage.write(key: 'refreshToken', value: token);
  }

  Future<void> removeRefreshToken() async {
    await _storage.delete(key: 'refreshToken');
  }

  Future<dynamic> get(String endpoint, [Map<String, dynamic>? query]) async {
    final uri = Uri.parse('$baseUrl$endpoint').replace(queryParameters: query);
    final token = await _storage.read(key: "accessToken");

    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );

    // If token is invalid or expired, try to refresh
    if (response.statusCode == 401) {
      log('Token expired, refreshing...');
      final refreshToken = await _storage.read(key: "refreshToken");

      if (refreshToken != null) {
        final json = await post(ApiRoutes.refreshToken, {
          'refreshToken': refreshToken,
        });

        await setAccessToken(json['token']);
        await setRefreshToken(json['refreshToken']['id']);

        // Retry original request
        return get(endpoint, query);
      } else {
        log('No refresh token available.');
        throw Exception('Unauthorized and no refresh token');
      }
    }

    return _handleResponse(response);
  }

  Future<dynamic> post(String endpoint, Map<String, dynamic> data) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final token = await _storage.read(key: "accessToken");

    final response = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  Future<dynamic> put(String endpoint, Map<String, dynamic> data) async {
    final uri = Uri.parse('$baseUrl$endpoint');
    final token = await _storage.read(key: "accessToken");

    final response = await http.put(
      uri,
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
      body: jsonEncode(data),
    );

    return _handleResponse(response);
  }

  Future<void> delete(String endpoint, String id) async {
    final uri = Uri.parse('$baseUrl$endpoint/$id');
    final token = await _storage.read(key: "accessToken");

    final response = await http.delete(
      uri,
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );

    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    log("Response: ${response.body}, Status Code: ${response.statusCode}");
    final json = jsonDecode(response.body) as Map<String, dynamic>;

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json;
    } else {
      throw Exception('[Error ${response.statusCode}] ${json['error']}');
    }
  }
}
