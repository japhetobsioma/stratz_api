import 'dart:convert';

/// Decoding JSON to Dota2HeroRole.
List<Dota2HeroRole> dota2HeroRoleFromJson(String str) =>
    List<Dota2HeroRole>.from(
        json.decode(str).map((x) => Dota2HeroRole.fromJson(x)));

/// Encoding Dota2HeroRole to JSON.
String dota2HeroRoleToJson(List<Dota2HeroRole> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

/// Role of Dota 2 hero.
class Dota2HeroRole {
  /// Role of Dota 2 hero.
  Dota2HeroRole({required this.id, required this.name, required this.langKey});

  /// Dota 2 hero role fromJson factory method.
  factory Dota2HeroRole.fromJson(Map<String, dynamic> json) => Dota2HeroRole(
        id: json['id'],
        name: json['name'],
        langKey: json['langKey'],
      );

  /// ID of role.
  final int id;

  /// Name of role.
  ///
  /// Example: Carry.
  final String name;

  /// Language key of role.
  ///
  /// Example: roles.carry.
  final String langKey;

  /// Dota 2 hero role toJson method.
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'langKey': langKey,
      };
}
