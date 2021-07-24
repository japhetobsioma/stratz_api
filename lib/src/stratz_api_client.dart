import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'models/dota2_hero/dota2_hero.dart';

/// Exception thrown when getDota2Hero fails
class Dota2HeroRequestFailure implements Exception {
  @override
  String toString() => 'Dota2HeroRequestFailure';
}

/// Exception thrown when the heroes response is not found
class Dota2HeroNotFoundFailure implements Exception {
  @override
  String toString() => 'Dota2HeroNotFoundFailure';
}

/// STRATZ API client library
class StratzApiClient {
  /// STRATZ API client library
  StratzApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'api.stratz.com';
  final http.Client _httpClient;

  /// The current list of Heroes found in the Dota 2 client.
  /// Includes all base stats plus additional information on the hero.
  ///
  /// [gameVersionId] - Returns the list of heroes for the given GameVersionId.
  /// Default is most recent build of the game.
  ///
  /// [languageId] - Input to determine which language some fields come back as.
  Future<List<Dota2Hero>> getDota2Heroes({
    int? gameVersionId,
    int? languageId,
  }) async {
    final request = Uri.https(_baseUrl, '/api/v1/Hero');
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw Dota2HeroRequestFailure();
    }

    final heroMap = dota2HeroFromJson(response.body);

    if (heroMap.isEmpty) {
      throw Dota2HeroNotFoundFailure();
    }

    return compute(_heroMapToList, heroMap);
  }

  /// Parse Dota 2 hero Map to List in an isolate to prevent freezes as it
  /// parses.
  static List<Dota2Hero> _heroMapToList(Map<String, Dota2Hero> dota2HeroMap) {
    return dota2HeroMap.entries.map((e) => e.value).toList();
  }
}
