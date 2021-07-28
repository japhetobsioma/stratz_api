import 'dart:convert';

/// Decoding JSON to Dota2GameVersion.
List<Dota2GameVersion> dota2GameVersionFromJson(String str) =>
    List<Dota2GameVersion>.from(
        json.decode(str).map((x) => Dota2GameVersion.fromJson(x)));

/// Encoding Dota2GameVersion to JSON.
String dota2GameVersionToJson(List<Dota2GameVersion> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

/// Game version of Dota 2.
class Dota2GameVersion {
  /// Game version of Dota 2.
  Dota2GameVersion({
    required this.id,
    required this.name,
    required this.startDate,
  });

  /// Game mode fromJson method.
  factory Dota2GameVersion.fromJson(Map<String, dynamic> json) =>
      Dota2GameVersion(
        id: json['id'],
        name: json['name'],
        startDate: DateTime.parse(json['startDate']),
      );

  /// ID of game version in Dota 2.
  final int id;

  /// Name of game version in Dota 2.
  ///
  /// Example: 7.29d
  final String name;

  /// Start date of game version in Dota 2.
  ///
  /// Example: 2021-05-24T00:00:00
  final DateTime startDate;

  /// Game version toJson method.
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'startDate': startDate.toIso8601String(),
      };
}
