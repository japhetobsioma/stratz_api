import 'dart:convert';

/// Decoding JSON to Dota2HeroDryad.
List<Dota2HeroDryad> dota2HeroDryadFromJson(String str) =>
    List<Dota2HeroDryad>.from(
        json.decode(str).map((x) => Dota2HeroDryad.fromJson(x)));

/// Encoding Dota2HeroDryad to JSON.
String dota2HeroDryadToJson(List<Dota2HeroDryad> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

/// Hero duo match up.
class Dota2HeroDryad {
  /// Hero duo match up.
  Dota2HeroDryad({
    required this.matchWith,
    required this.matchCountWith,
    required this.matchVs,
    required this.matchCountVs,
  });

  /// Dota 2 hero dryad fromJson factory method.
  factory Dota2HeroDryad.fromJson(Map<String, dynamic> json) => Dota2HeroDryad(
        matchWith: List<_MatchWith>.from(
            json['with'].map((x) => _MatchWith.fromJson(x))),
        matchCountWith: json['matchCountWith'],
        matchVs:
            List<_MatchVs>.from(json['vs'].map((x) => _MatchVs.fromJson(x))),
        matchCountVs: json['matchCountVs'],
      );

  /// Match up with.
  final List<_MatchWith>? matchWith;

  /// Match up with count.
  final int? matchCountWith;

  /// Match up versus.
  final List<_MatchVs>? matchVs;

  /// Match up versus count.
  final int matchCountVs;

  /// Dota 2 hero dryad toJson method.
  Map<String, dynamic> toJson() => {
        'with': List<dynamic>.from(matchWith!.map((x) => x.toJson())),
        'matchCountWith': matchCountWith,
        'vs': List<dynamic>.from(matchVs!.map((x) => x.toJson())),
        'matchCountVs': matchCountVs,
      };
}

/// Match up with.
class _MatchWith {
  /// Match up with.
  _MatchWith({
    required this.heroId1,
    required this.heroId2,
    required this.week,
    required this.bracketBasic,
    required this.matchCount,
    required this.kills,
    required this.deaths,
    required this.assists,
    required this.networth,
    required this.duration,
    required this.firstBloodTime,
    required this.cs,
    required this.dn,
    required this.goldEarned,
    required this.xp,
    required this.heroDamage,
    required this.towerDamage,
    required this.heroHealing,
    required this.level,
    required this.synergy,
    required this.wins,
  });

  /// Match with fromJson factory method.
  factory _MatchWith.fromJson(Map<String, dynamic> json) => _MatchWith(
        heroId1: json['heroId1'],
        heroId2: json['heroId2'],
        week: json['week'],
        bracketBasic: json['bracketBasic'],
        matchCount: json['matchCount'],
        kills: json['kills'],
        deaths: json['deaths'],
        assists: json['assists'],
        networth: json['networth'],
        duration: json['duration'],
        firstBloodTime: json['firstBloodTime'],
        cs: json['cs'],
        dn: json['dn'],
        goldEarned: json['goldEarned'],
        xp: json['xp'],
        heroDamage: json['heroDamage'],
        towerDamage: json['towerDamage'],
        heroHealing: json['heroHealing'],
        level: json['level'],
        synergy: json['synergy'],
        wins: json['wins'],
      );

  /// First hero ID.
  final int heroId1;

  /// Second hero ID.
  final int heroId2;

  /// Match week number.
  final int week;

  /// Match bracket basic.
  final int bracketBasic;

  /// Match hero count.
  final int matchCount;

  /// Match kills.
  final int kills;

  /// Match deaths.
  final int deaths;

  /// Match assists.
  final int assists;

  /// Match networth.
  final int networth;

  /// Match duration.
  final int duration;

  /// Match first blood time.
  final int firstBloodTime;

  /// Match creep steal.
  final int cs;

  /// Match creep deny.
  final int dn;

  /// Match gold earned.
  final int goldEarned;

  /// Match experience.
  final int xp;

  /// Match hero damage.
  final int heroDamage;

  /// Match tower damage.
  final int towerDamage;

  /// Match hero healing.
  final int heroHealing;

  /// Match level.
  final int level;

  /// Match synergy.
  final double synergy;

  /// Match wins.
  final double wins;

  /// Match with toJson method.
  Map<String, dynamic> toJson() => {
        'heroId1': heroId1,
        'heroId2': heroId2,
        'week': week,
        'bracketBasic': bracketBasic,
        'matchCount': matchCount,
        'kills': kills,
        'deaths': deaths,
        'assists': assists,
        'networth': networth,
        'duration': duration,
        'firstBloodTime': firstBloodTime,
        'cs': cs,
        'dn': dn,
        'goldEarned': goldEarned,
        'xp': xp,
        'heroDamage': heroDamage,
        'towerDamage': towerDamage,
        'heroHealing': heroHealing,
        'level': level,
        'synergy': synergy,
        'wins': wins,
      };
}

/// Match versus.
class _MatchVs {
  /// Match versus.
  _MatchVs({
    required this.heroId1,
    required this.heroId2,
    required this.week,
    required this.bracketBasic,
    required this.matchCount,
    required this.kills,
    required this.deaths,
    required this.assists,
    required this.networth,
    required this.duration,
    required this.firstBloodTime,
    required this.cs,
    required this.dn,
    required this.goldEarned,
    required this.xp,
    required this.heroDamage,
    required this.towerDamage,
    required this.heroHealing,
    required this.level,
    required this.synergy,
    required this.wins,
  });

  /// Match versus fromJson method.
  factory _MatchVs.fromJson(Map<String, dynamic> json) => _MatchVs(
        heroId1: json['heroId1'],
        heroId2: json['heroId2'],
        week: json['week'],
        bracketBasic: json['bracketBasic'],
        matchCount: json['matchCount'],
        kills: json['kills'],
        deaths: json['deaths'],
        assists: json['assists'],
        networth: json['networth'],
        duration: json['duration'],
        firstBloodTime: json['firstBloodTime'],
        cs: json['cs'],
        dn: json['dn'],
        goldEarned: json['goldEarned'],
        xp: json['xp'],
        heroDamage: json['heroDamage'],
        towerDamage: json['towerDamage'],
        heroHealing: json['heroHealing'],
        level: json['level'],
        synergy: json['synergy'],
        wins: json['wins'],
      );

  /// First hero ID.
  final int heroId1;

  /// Second hero ID.
  final int heroId2;

  /// Match week number.
  final int week;

  /// Match bracket basic.
  final int bracketBasic;

  /// Match hero count.
  final int matchCount;

  /// Match kills.
  final int kills;

  /// Match deaths.
  final int deaths;

  /// Match assists.
  final int assists;

  /// Match networth.
  final int networth;

  /// Match duration.
  final int duration;

  /// Match first blood time.
  final int firstBloodTime;

  /// Match creep steal.
  final int cs;

  /// Match creep deny.
  final int dn;

  /// Match gold earned.
  final int goldEarned;

  /// Match experience.
  final int xp;

  /// Match hero damage.
  final int heroDamage;

  /// Match tower damage.
  final int towerDamage;

  /// Match hero healing.
  final int heroHealing;

  /// Match level.
  final int level;

  /// Match synergy.
  final double synergy;

  /// Match wins.
  final double wins;

  /// Match versus toJson method.
  Map<String, dynamic> toJson() => {
        'heroId1': heroId1,
        'heroId2': heroId2,
        'week': week,
        'bracketBasic': bracketBasic,
        'matchCount': matchCount,
        'kills': kills,
        'deaths': deaths,
        'assists': assists,
        'networth': networth,
        'duration': duration,
        'firstBloodTime': firstBloodTime,
        'cs': cs,
        'dn': dn,
        'goldEarned': goldEarned,
        'xp': xp,
        'heroDamage': heroDamage,
        'towerDamage': towerDamage,
        'heroHealing': heroHealing,
        'level': level,
        'synergy': synergy,
        'wins': wins,
      };
}
