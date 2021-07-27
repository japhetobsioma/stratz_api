import 'dart:convert';

/// Decoding JSON to Ability.
Map<String, Ability> abilityFromJson(String str) => Map.from(json.decode(str))
    .map((k, v) => MapEntry<String, Ability>(k, Ability.fromJson(v)));

/// Encoding Ability to JSON.
String abilityToJson(Map<String, Ability> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

/// Ability in Dota 2.
class Ability {
  /// Ability in Dota 2.
  Ability({
    required this.id,
    required this.name,
    required this.drawMatchPage,
    required this.isTalent,
    required this.language,
    required this.stat,
    required this.uri,
  });

  /// Ability fromJson factory method.
  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        id: json['id'],
        name: json['name'],
        drawMatchPage: json['drawMatchPage'],
        isTalent: json['isTalent'],
        language: json['language'] == null
            ? null
            : Language.fromJson(json['language']),
        stat: json['stat'] == null ? null : Stat.fromJson(json['stat']),
        uri: json['uri'],
      );

  /// ID of ability.
  final int id;

  /// Name of ability.
  final String? name;

  /// drawMatchPage of ability.
  final bool drawMatchPage;

  /// If ability is a talent.
  final bool? isTalent;

  /// Ability in this language.
  final Language? language;

  /// Stat of ability.
  final Stat? stat;

  /// Uri of ability.
  final String? uri;

  /// Ability toJson method.
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'drawMatchPage': drawMatchPage,
        'isTalent': isTalent,
        'language': language == null ? null : language!.toJson(),
        'stat': stat == null ? null : stat!.toJson(),
        'uri': uri,
      };
}

/// Ability in this language.
class Language {
  // Ability in this language.
  Language({
    required this.abilityId,
    required this.gameVersionId,
    required this.languageId,
    required this.displayName,
    required this.description,
    required this.attributes,
    required this.notes,
    required this.lore,
    required this.shardDescription,
    required this.aghanimDescription,
  });

  /// Language fromJson factory method.
  factory Language.fromJson(Map<String, dynamic> json) => Language(
        abilityId: json['abilityId'],
        gameVersionId: json['gameVersionId'],
        languageId: json['languageId'],
        displayName: json['displayName'],
        description: List<String>.from(json['description'].map((x) => x)),
        attributes: List<String>.from(json['attributes'].map((x) => x)),
        notes: List<String>.from(json['notes'].map((x) => x)),
        lore: json['lore'],
        shardDescription: json['shardDescription'],
        aghanimDescription: json['aghanimDescription'],
      );

  /// ID of ability.
  final int abilityId;

  /// Game version ID of Dota 2.
  final int gameVersionId;

  /// ID of language.
  final int languageId;

  /// Display name of ability.
  final String? displayName;

  /// Description of ability.
  final List<String>? description;

  /// Attributes of ability.
  final List<String>? attributes;

  /// Notes of ability.
  final List<String> notes;

  /// Lore of ability.
  final String? lore;

  /// Shard description of ability.
  final String? shardDescription;

  /// aghanim description of ability.
  final String? aghanimDescription;

  /// Language toJson method.
  Map<String, dynamic> toJson() => {
        'abilityId': abilityId,
        'gameVersionId': gameVersionId,
        'languageId': languageId,
        'displayName': displayName,
        'description': List<dynamic>.from(description!.map((x) => x)),
        'attributes': List<dynamic>.from(attributes!.map((x) => x)),
        'notes': List<dynamic>.from(notes.map((x) => x)),
        'lore': lore,
        'shardDescription': shardDescription,
        'aghanimDescription': aghanimDescription,
      };
}

/// Stat of ability.
class Stat {
  /// Stat of ability.
  Stat({
    required this.abilityId,
    required this.gameVersionId,
    required this.type,
    required this.behavior,
    required this.unitTargetType,
    required this.unitTargetTeam,
    required this.unitTargetFlags,
    required this.unitDamageType,
    required this.spellImmunity,
    required this.modifierSupportValue,
    required this.modifierSupportBonus,
    required this.isOnCastbar,
    required this.isOnLearnbar,
    required this.fightRecapLevel,
    required this.isGrantedByScepter,
    required this.hasScepterUpgrade,
    required this.maxLevel,
    required this.levelsBetweenUpgrade,
    required this.requiredLevel,
    required this.displayAdditionalHeroes,
    required this.castRangeBuffer,
    required this.isUltimate,
    required this.duration,
    required this.charges,
    required this.chargeRestoreTime,
    required this.isGrantedByShard,
    required this.dispellable,
    required this.castRange,
    required this.castPoint,
    required this.cooldown,
    required this.manaCost,
    required this.channelTime,
    required this.damage,
    required this.hotKeyOverride,
  });

  /// Stat fromJson factory method.
  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        abilityId: json['abilityId'],
        gameVersionId: json['gameVersionId'],
        type: json['type'],
        behavior: json['behavior'],
        unitTargetType: json['unitTargetType'],
        unitTargetTeam: json['unitTargetTeam'],
        unitTargetFlags: json['unitTargetFlags'],
        unitDamageType: json['unitDamageType'],
        spellImmunity: json['spellImmunity'],
        modifierSupportValue: json['modifierSupportValue'].toDouble(),
        modifierSupportBonus: json['modifierSupportBonus'],
        isOnCastbar: json['isOnCastbar'],
        isOnLearnbar: json['isOnLearnbar'],
        fightRecapLevel: json['fightRecapLevel'],
        isGrantedByScepter: json['isGrantedByScepter'],
        hasScepterUpgrade: json['hasScepterUpgrade'],
        maxLevel: json['maxLevel'],
        levelsBetweenUpgrade: json['levelsBetweenUpgrade'],
        requiredLevel: json['requiredLevel'],
        displayAdditionalHeroes: json['displayAdditionalHeroes'],
        castRangeBuffer: List<int>.from(json['castRangeBuffer'].map((x) => x)),
        isUltimate: json['isUltimate'],
        duration: json['duration'],
        charges: json['charges'],
        chargeRestoreTime: json['chargeRestoreTime'],
        isGrantedByShard: json['isGrantedByShard'],
        dispellable: json['dispellable'],
        castRange: json['castRange'] == null
            ? null
            : List<int>.from(json['castRange'].map((x) => x)),
        castPoint: json['castPoint'] == null
            ? null
            : List<double>.from(json['castPoint'].map((x) => x.toDouble())),
        cooldown: json['cooldown'] == null
            ? null
            : List<double>.from(json['cooldown'].map((x) => x.toDouble())),
        manaCost: json['manaCost'] == null
            ? null
            : List<int>.from(json['manaCost'].map((x) => x)),
        channelTime: json['channelTime'] == null
            ? null
            : List<double>.from(json['channelTime'].map((x) => x.toDouble())),
        damage: json['damage'] == null
            ? null
            : List<int>.from(json['damage'].map((x) => x)),
        hotKeyOverride: json['hotKeyOverride'],
      );

  /// ID of ability.
  final int abilityId;

  /// Game version of Dota 2.
  final int gameVersionId;

  /// Type of ability.
  final int? type;

  /// Behavior of ability.
  final int? behavior;

  /// Unit target type of ability.
  final int? unitTargetType;

  /// Unit target team of ability.
  final int? unitTargetTeam;

  /// Unit target flags of ability.
  final int? unitTargetFlags;

  /// Unit damage type of ability.
  final int? unitDamageType;

  /// Spell immunity of ability.
  final int? spellImmunity;

  /// Modifier support value of ability.
  final double? modifierSupportValue;

  /// Modifier support bonus of ability.
  final int? modifierSupportBonus;

  /// If the ability is on cast bar.
  final bool? isOnCastbar;

  /// If the ability is on learn bar.
  final bool? isOnLearnbar;

  /// Fight recap level of ability.
  final int? fightRecapLevel;

  /// If the ability is granted by scepter.
  final bool? isGrantedByScepter;

  /// If the ability has scepter upgrade.
  final bool? hasScepterUpgrade;

  /// Max level of ability.
  final int? maxLevel;

  /// Level between upgrade of ability.
  final int? levelsBetweenUpgrade;

  /// Required level of ability.
  final int? requiredLevel;

  /// If the ability display additional heroes.
  final bool? displayAdditionalHeroes;

  /// Cast range buffer of ability.
  final List<int>? castRangeBuffer;

  /// If the ability is ultimate.
  final bool? isUltimate;

  /// Duration of ability.
  final String? duration;

  /// Charge of ability.
  final String? charges;

  /// Charge restore time of ability.
  final String? chargeRestoreTime;

  /// If the ability is granted by shard.
  final bool? isGrantedByShard;

  /// Dispellable of ability.
  final int dispellable;

  /// Cast range of ability.
  final List<int>? castRange;

  /// Cast point of ability.
  final List<double>? castPoint;

  /// Cooldown of ability.
  final List<double>? cooldown;

  /// Mana cost of ability.
  final List<int>? manaCost;

  /// Channel time of ability.
  final List<double>? channelTime;

  /// Damage of ability.
  final List<int>? damage;

  /// Hot key override of ability.
  final String? hotKeyOverride;

  /// Ability toJson method.
  Map<String, dynamic> toJson() => {
        'abilityId': abilityId,
        'gameVersionId': gameVersionId,
        'type': type,
        'behavior': behavior,
        'unitTargetType': unitTargetType,
        'unitTargetTeam': unitTargetTeam,
        'unitTargetFlags': unitTargetFlags,
        'unitDamageType': unitDamageType,
        'spellImmunity': spellImmunity,
        'modifierSupportValue': modifierSupportValue,
        'modifierSupportBonus': modifierSupportBonus,
        'isOnCastbar': isOnCastbar,
        'isOnLearnbar': isOnLearnbar,
        'fightRecapLevel': fightRecapLevel,
        'isGrantedByScepter': isGrantedByScepter,
        'hasScepterUpgrade': hasScepterUpgrade,
        'maxLevel': maxLevel,
        'levelsBetweenUpgrade': levelsBetweenUpgrade,
        'requiredLevel': requiredLevel,
        'displayAdditionalHeroes': displayAdditionalHeroes,
        'castRangeBuffer': List<dynamic>.from(castRangeBuffer!.map((x) => x)),
        'isUltimate': isUltimate,
        'duration': duration,
        'charges': charges,
        'chargeRestoreTime': chargeRestoreTime,
        'isGrantedByShard': isGrantedByShard,
        'dispellable': dispellable,
        'castRange': castRange == null
            ? null
            : List<dynamic>.from(castRange!.map((x) => x)),
        'castPoint': castPoint == null
            ? null
            : List<dynamic>.from(castPoint!.map((x) => x)),
        'cooldown': cooldown == null
            ? null
            : List<dynamic>.from(cooldown!.map((x) => x)),
        'manaCost': manaCost == null
            ? null
            : List<dynamic>.from(manaCost!.map((x) => x)),
        'channelTime': channelTime == null
            ? null
            : List<dynamic>.from(channelTime!.map((x) => x)),
        'damage':
            damage == null ? null : List<dynamic>.from(damage!.map((x) => x)),
        'hotKeyOverride': hotKeyOverride,
      };
}
