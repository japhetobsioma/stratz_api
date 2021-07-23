import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:stratz_api/stratz_api.dart';

/// Exception thrown when getDota2Heroes fails
class Dota2HeroesRequestFailure implements Exception {
  @override
  String toString() => 'Dota2HeroesRequestFailure';
}

/// Exception thrown when the provided heroes is not found
class Dota2HeroesNotFoundFailure implements Exception {
  @override
  String toString() => 'Dota2HeroesNotFoundFailure';
}

class StratzApiClient {
  StratzApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'api.stratz.com';
  final http.Client _httpClient;

  /// The current list of Heroes found in the Dota 2 client.
  /// Includes all base stats plus additional information on the hero.
  Future<List<Dota2Hero>> getAllDota2Heroes() async {
    final dota2HeroRequest = Uri.https(_baseUrl, '/api/v1/Hero');
    final dota2HeroResponse = await _httpClient.get(dota2HeroRequest);

    if (dota2HeroResponse.statusCode != 200) {
      throw Dota2HeroesRequestFailure();
    }

    final dota2HeroMap = dota2HeroFromJson(dota2HeroResponse.body);

    if (dota2HeroMap.isEmpty) {
      throw Dota2HeroesNotFoundFailure();
    }

    return compute(_mapHeroesToList, dota2HeroMap);
  }

  static List<Dota2Hero> _mapHeroesToList(Map<String, Dota2Hero> dota2HeroMap) {
    return dota2HeroMap.entries.map((e) => e.value).toList();
  }

  /// Get the [dota2Hero] icon URL
  String getDota2HeroIconUrl(Dota2Hero dota2Hero) {
    return 'https://cdn.stratz.com/images/dota2/heroes/'
        '${dota2Hero.shortName}_icon.png';
  }

  /// Get single Hero by id
  Future<Dota2Hero> getDota2Hero(int id) async {
    final dota2Heroes = await getAllDota2Heroes();
    final dota2map = {
      'dota2Heroes': dota2Heroes,
      'heroId': id,
    };

    return compute(_getSingleHeroById, dota2map);
  }

  static Dota2Hero _getSingleHeroById(Map<String, dynamic> dota2Map) {
    final dota2Heroes = dota2Map['dota2Heroes'];
    final heroId = dota2Map['heroId'];
    return dota2Heroes.firstWhere((element) => element.id == heroId);
  }
}
