import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stratz_api/stratz_api.dart';

class HeroRequestFailure implements Exception {}

class HeroNotFoundFailure implements Exception {}

class StratzApiClient {
  StratzApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'www.api.stratz.com';
  final http.Client _httpClient;

  Future<Map<String, Hero>> getHeroes() async {
    final heroRequest = Uri.https(_baseUrl, '/api/v1/Hero');
    final heroResponse = await _httpClient.get(heroRequest);

    if (heroResponse.statusCode != 200) {
      throw HeroRequestFailure();
    }

    final heroJson = jsonDecode(heroResponse.body) as String;

    if (heroJson.isEmpty) {
      throw HeroNotFoundFailure();
    }

    return heroFromJson(heroResponse.body);
  }
}
