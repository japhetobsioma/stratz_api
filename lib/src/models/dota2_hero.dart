import 'dart:convert';

Map<String, Dota2Hero> dota2HeroFromJson(String str) =>
    Map.from(json.decode(str))
        .map((k, v) => MapEntry<String, Dota2Hero>(k, Dota2Hero.fromJson(v)));

String dota2HeroToJson(Map<String, Dota2Hero> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Dota2Hero {
  Dota2Hero({
    required this.id,
    required this.name,
    required this.displayName,
    required this.shortName,
    required this.abilities,
    required this.roles,
    required this.talents,
    required this.stat,
    required this.language,
    required this.aliases,
  });

  factory Dota2Hero.fromJson(Map<String, dynamic> json) => Dota2Hero(
        id: json['id'],
        name: json['name'],
        displayName: json['displayName'],
        shortName: json['shortName'],
        abilities: List<Ability>.from(
            json['abilities'].map((x) => Ability.fromJson(x))),
        roles: List<Role>.from(json['roles'].map((x) => Role.fromJson(x))),
        talents:
            List<Talent>.from(json['talents'].map((x) => Talent.fromJson(x))),
        stat: Stat.fromJson(json['stat']),
        language: Language.fromJson(json['language']),
        aliases: List<String>.from(json['aliases'].map((x) => x)),
      );

  final int id;
  final String name;
  final String displayName;
  final String shortName;
  final List<Ability> abilities;
  final List<Role> roles;
  final List<Talent> talents;
  final Stat stat;
  final Language language;
  final List<String> aliases;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'displayName': displayName,
        'shortName': shortName,
        'abilities': List<dynamic>.from(abilities.map((x) => x.toJson())),
        'roles': List<dynamic>.from(roles.map((x) => x.toJson())),
        'talents': List<dynamic>.from(talents.map((x) => x.toJson())),
        'stat': stat.toJson(),
        'language': language.toJson(),
        'aliases': List<dynamic>.from(aliases.map((x) => x)),
      };
}

class Ability {
  Ability({
    required this.slot,
    required this.abilityId,
  });

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json['slot'],
        abilityId: json['abilityId'],
      );

  final int slot;
  final int abilityId;

  Map<String, dynamic> toJson() => {
        'slot': slot,
        'abilityId': abilityId,
      };
}

class Language {
  Language({
    required this.heroId,
    required this.gameVersionId,
    required this.languageId,
    required this.displayName,
    required this.bio,
    required this.hype,
  });

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        heroId: json['heroId'],
        gameVersionId: json['gameVersionId'],
        languageId: json['languageId'],
        displayName: json['displayName'],
        bio: json['bio'],
        hype: json['hype'],
      );

  final int heroId;
  final int gameVersionId;
  final int languageId;
  final String displayName;
  final String bio;
  final String hype;

  Map<String, dynamic> toJson() => {
        'heroId': heroId,
        'gameVersionId': gameVersionId,
        'languageId': languageId,
        'displayName': displayName,
        'bio': bio,
        'hype': hype,
      };
}

class Role {
  Role({
    required this.roleId,
    required this.level,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        roleId: json['roleId'],
        level: json['level'],
      );

  final int roleId;
  final int level;

  Map<String, dynamic> toJson() => {
        'roleId': roleId,
        'level': level,
      };
}

class Stat {
  Stat({
    required this.gameVersionId,
    required this.enabled,
    required this.heroUnlockOrder,
    required this.team,
    required this.cmEnabled,
    required this.newPlayerEnabled,
    required this.attackType,
    required this.startingArmor,
    required this.startingMagicArmor,
    required this.startingDamageMin,
    required this.startingDamageMax,
    required this.attackRate,
    required this.attackAnimationPoint,
    required this.attackAcquisitionRange,
    required this.attackRange,
    required this.primaryAttribute,
    required this.heroPrimaryAttribute,
    required this.strengthBase,
    required this.strengthGain,
    required this.intelligenceBase,
    required this.intelligenceGain,
    required this.agilityBase,
    required this.agilityGain,
    required this.hpRegen,
    required this.mpRegen,
    required this.moveSpeed,
    required this.moveTurnRate,
    required this.hpBarOffset,
    required this.visionDaytimeRange,
    required this.visionNighttimeRange,
    required this.complexity,
  });

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        gameVersionId: json['gameVersionId'],
        enabled: json['enabled'],
        heroUnlockOrder: json['heroUnlockOrder'],
        team: json['team'],
        cmEnabled: json['cmEnabled'],
        newPlayerEnabled: json['newPlayerEnabled'],
        attackType: attackTypeValues.map[json['attackType']]!,
        startingArmor: json['startingArmor'].toDouble(),
        startingMagicArmor: json['startingMagicArmor'],
        startingDamageMin: json['startingDamageMin'],
        startingDamageMax: json['startingDamageMax'],
        attackRate: json['attackRate'].toDouble(),
        attackAnimationPoint: json['attackAnimationPoint'].toDouble(),
        attackAcquisitionRange: json['attackAcquisitionRange'],
        attackRange: json['attackRange'],
        primaryAttribute: primaryAttributeValues.map[json['primaryAttribute']]!,
        heroPrimaryAttribute: json['heroPrimaryAttribute'],
        strengthBase: json['strengthBase'],
        strengthGain: json['strengthGain'].toDouble(),
        intelligenceBase: json['intelligenceBase'],
        intelligenceGain: json['intelligenceGain'].toDouble(),
        agilityBase: json['agilityBase'],
        agilityGain: json['agilityGain'].toDouble(),
        hpRegen: json['hpRegen'].toDouble(),
        mpRegen: json['mpRegen'].toDouble(),
        moveSpeed: json['moveSpeed'],
        moveTurnRate: json['moveTurnRate'].toDouble(),
        hpBarOffset: json['hpBarOffset'],
        visionDaytimeRange: json['visionDaytimeRange'],
        visionNighttimeRange: json['visionNighttimeRange'],
        complexity: json['complexity'],
      );

  final int gameVersionId;
  final bool enabled;
  final double heroUnlockOrder;
  final bool team;
  final bool cmEnabled;
  final bool newPlayerEnabled;
  final AttackType attackType;
  final double startingArmor;
  final double startingMagicArmor;
  final double startingDamageMin;
  final double startingDamageMax;
  final double attackRate;
  final double attackAnimationPoint;
  final double attackAcquisitionRange;
  final double attackRange;
  final PrimaryAttribute primaryAttribute;
  final int heroPrimaryAttribute;
  final double strengthBase;
  final double strengthGain;
  final double intelligenceBase;
  final double intelligenceGain;
  final double agilityBase;
  final double agilityGain;
  final double hpRegen;
  final double mpRegen;
  final double moveSpeed;
  final double moveTurnRate;
  final double hpBarOffset;
  final double visionDaytimeRange;
  final double visionNighttimeRange;
  final int complexity;

  Map<String, dynamic> toJson() => {
        'gameVersionId': gameVersionId,
        'enabled': enabled,
        'heroUnlockOrder': heroUnlockOrder,
        'team': team,
        'cmEnabled': cmEnabled,
        'newPlayerEnabled': newPlayerEnabled,
        'attackType': attackTypeValues.reverse![attackType],
        'startingArmor': startingArmor,
        'startingMagicArmor': startingMagicArmor,
        'startingDamageMin': startingDamageMin,
        'startingDamageMax': startingDamageMax,
        'attackRate': attackRate,
        'attackAnimationPoint': attackAnimationPoint,
        'attackAcquisitionRange': attackAcquisitionRange,
        'attackRange': attackRange,
        'primaryAttribute': primaryAttributeValues.reverse![primaryAttribute],
        'heroPrimaryAttribute': heroPrimaryAttribute,
        'strengthBase': strengthBase,
        'strengthGain': strengthGain,
        'intelligenceBase': intelligenceBase,
        'intelligenceGain': intelligenceGain,
        'agilityBase': agilityBase,
        'agilityGain': agilityGain,
        'hpRegen': hpRegen,
        'mpRegen': mpRegen,
        'moveSpeed': moveSpeed,
        'moveTurnRate': moveTurnRate,
        'hpBarOffset': hpBarOffset,
        'visionDaytimeRange': visionDaytimeRange,
        'visionNighttimeRange': visionNighttimeRange,
        'complexity': complexity,
      };
}

enum AttackType { melee, ranged }

final attackTypeValues =
    EnumValues({'Melee': AttackType.melee, 'Ranged': AttackType.ranged});

enum PrimaryAttribute { agility, strength, intelligence }

final primaryAttributeValues = EnumValues({
  'agi': PrimaryAttribute.agility,
  'int': PrimaryAttribute.intelligence,
  'str': PrimaryAttribute.strength
});

extension PrimaryAttributeX on PrimaryAttribute {
  String? get name => {
        PrimaryAttribute.agility: 'Agility',
        PrimaryAttribute.intelligence: 'Intelligence',
        PrimaryAttribute.strength: 'Strength',
      }[this];
}

class Talent {
  Talent({
    required this.slot,
    required this.gameVersionId,
    required this.abilityId,
  });

  factory Talent.fromJson(Map<String, dynamic> json) => Talent(
        slot: json['slot'],
        gameVersionId: json['gameVersionId'],
        abilityId: json['abilityId'],
      );

  final int slot;
  final int gameVersionId;
  final int abilityId;

  Map<String, dynamic> toJson() => {
        'slot': slot,
        'gameVersionId': gameVersionId,
        'abilityId': abilityId,
      };
}

class EnumValues<T> {
  EnumValues(this.map);
  Map<String, T> map;
  Map<T, String>? reverseMap;

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
