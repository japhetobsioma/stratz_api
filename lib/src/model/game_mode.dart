import 'dart:convert';

/// Decoding JSON to Dota2GameMode.
Map<String, Dota2GameMode> dota2GameModeFromJson(String str) =>
    Map.from(json.decode(str)).map((k, v) =>
        MapEntry<String, Dota2GameMode>(k, Dota2GameMode.fromJson(v)));

/// Encoding Dota2GameMode to JSON.
String dota2GameModeToJson(Map<String, Dota2GameMode> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

/// Game mode type in Dota 2.
class Dota2GameMode {
  /// Game mode type in Dota 2.
  Dota2GameMode({
    required this.id,
    required this.name,
    required this.langKey,
  });

  /// Game mode fromJson method.
  factory Dota2GameMode.fromJson(Map<String, dynamic> json) => Dota2GameMode(
        id: json['id'],
        name: json['name'],
        langKey: json['langKey'],
      );

  /// ID of game mode in Dota 2.
  final int id;

  /// Name of game mode in Dota 2.
  ///
  /// Example: All Pick
  final String? name;

  /// LangKey of game mode in Dota 2.
  ///
  /// Example: gamemode.all_pick
  final String? langKey;

  /// Game mode toJson method.
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'langKey': langKey,
      };
}
