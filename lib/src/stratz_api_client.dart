import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'client_exception.dart';
import 'model/models.dart';

/// STRATZ API client library
class StratzApiClient {
  /// STRATZ API client library
  StratzApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  /// STRATZ API base URL.
  static const _baseUrl = 'api.stratz.com';

  /// Http client
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

  /// All information retaining to the Dota 2 Abilities by Game Version.
  ///
  /// [gameVersionId] - Game Version Id matching STRATZ GameVersion endpoint.
  ///
  /// [languageId] - Language to for data coming back. Available values : 0, 1,
  /// 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
  /// 22, 23, 24, 25, 26
  Future<List<Dota2Ability>> getDota2Abilities({
    int? gameVersionId,
    int? languageId,
  }) async {
    final request = Uri.https(_baseUrl, '/api/v1/Ability');
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw Dota2AbilityRequestFailure();
    }

    final abilityMap = dota2AbilityFromJson(response.body);

    if (abilityMap.isEmpty) {
      throw Dota2AbilityNotFoundFailure();
    }

    return compute(_abilityMapToList, abilityMap);
  }

  /// Provided directly from Dota 2 Region files, the cluster is the
  /// geographically breakdown of where the game is played.
  Future<List<Dota2Cluster>> getDota2Clusters() async {
    final request = Uri.https(_baseUrl, '/api/v1/Cluster');
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw Dota2ClusterRequestFailure();
    }

    final clusterList = dota2ClusterFromJson(response.body);

    if (clusterList.isEmpty) {
      throw Dota2ClusterNotFoundFailure();
    }

    return clusterList;
  }

  /// Returns a list of GameMode types which is directly supplied by Dota 2.
  /// Matches API call will have a input for this value.
  Future<List<Dota2GameMode>> getDota2GameModes() async {
    final request = Uri.https(_baseUrl, '/api/v1/GameMode');
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw Dota2GameModeRequestFailure();
    }

    final gameModeMap = dota2GameModeFromJson(response.body);

    if (gameModeMap.isEmpty) {
      throw Dota2GameModeNotFoundFailure();
    }

    return gameModeMap.entries.map((e) => e.value).toList();
  }

  /// The list of game versions the Dota 2 game has gone through.
  Future<List<Dota2GameVersion>> getDota2GameVersions() async {
    final request = Uri.https(_baseUrl, '/api/v1/GameVersion');
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw Dota2GameVersionRequestFailure();
    }

    final gameVersionList = dota2GameVersionFromJson(response.body);

    if (gameVersionList.isEmpty) {
      throw Dota2GameVersionNotFoundFailure();
    }

    return gameVersionList;
  }

  /// Parse Dota 2 hero Map to List in an isolate to prevent freezes as it
  /// parses.
  static List<Dota2Hero> _heroMapToList(Map<String, Dota2Hero> dota2HeroMap) {
    return dota2HeroMap.entries.map((e) => e.value).toList();
  }

  /// Parse Dota 2 ability Map to List in isolate to prevent freezed as it
  /// parses.
  static List<Dota2Ability> _abilityMapToList(
      Map<String, Dota2Ability> dota2AbilityMap) {
    return dota2AbilityMap.entries.map((e) => e.value).toList();
  }
}
