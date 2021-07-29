import 'dart:convert';

/// Decoding JSON to Dota2Cluster.
List<Dota2Cluster> dota2ClusterFromJson(String str) => List<Dota2Cluster>.from(
    json.decode(str).map((x) => Dota2Cluster.fromJson(x)));

/// Encoding Dota2Cluster to JSON.
String dota2ClusterToJson(List<Dota2Cluster> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

/// Geographically breakdown of where the game is played.
class Dota2Cluster {
  /// Geographically breakdown of where the game is played.
  Dota2Cluster({required this.id, required this.regionId});

  /// Cluster fromJson method.
  factory Dota2Cluster.fromJson(Map<String, dynamic> json) =>
      Dota2Cluster(id: json['id'], regionId: json['regionId']);

  /// ID of cluster.
  final int id;

  /// Region ID of cluster.
  final int regionId;

  /// Cluster toJson method.
  Map<String, dynamic> toJson() => {'id': id, 'regionId': regionId};
}
