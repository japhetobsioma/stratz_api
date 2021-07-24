import 'dart:convert';

/// Decoding JSON to Dota2Hero.
Map<String, Dota2Hero> dota2HeroFromJson(String str) =>
    Map.from(json.decode(str))
        .map((k, v) => MapEntry<String, Dota2Hero>(k, Dota2Hero.fromJson(v)));

/// Encoding Dota2Hero to JSON.
String dota2HeroToJson(Map<String, Dota2Hero> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

/// A hero of Dota 2.
class Dota2Hero {
  /// A hero of Dota 2.
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

  /// Dota 2 Hero fromJson factory method.
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

  /// ID of Dota 2 hero.
  final int id;

  /// Name of Dota 2 hero.
  final String? name;

  /// Display name of Dota 2 hero.
  final String? displayName;

  /// Short name of Dota 2 hero.
  final String? shortName;

  /// Abilities of Dota 2 hero.
  final List<Ability?> abilities;

  /// Roles of Dota 2 hero.
  final List<Role?> roles;

  /// Talents of Dota 2 hero.
  final List<Talent?> talents;

  /// Stat of Dota 2 hero.
  final Stat stat;

  /// This is what the display name, bio and hype of a Dota 2 hero in other
  /// languages.
  final Language language;

  /// Aliases of Dota 2 hero.
  final List<String?> aliases;

  /// Dota 2 Hero toJson method.
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'displayName': displayName,
        'shortName': shortName,
        'abilities': List<dynamic>.from(abilities.map((x) => x!.toJson())),
        'roles': List<dynamic>.from(roles.map((x) => x!.toJson())),
        'talents': List<dynamic>.from(talents.map((x) => x!.toJson())),
        'stat': stat.toJson(),
        'language': language.toJson(),
        'aliases': List<dynamic>.from(aliases.map((x) => x)),
      };
}

/// Ability of Dota 2 hero.
class Ability {
  /// Ability of Dota 2 hero.
  Ability({required this.slot, required this.abilityId});

  /// Ability fromJson factory method.
  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json['slot'],
        abilityId: json['abilityId'],
      );

  /// Ability slot of Dota 2 hero.
  final int slot;

  /// Ability ID of Dota 2 hero.
  final int abilityId;

  /// Ability toJson method.
  Map<String, dynamic> toJson() => {
        'slot': slot,
        'abilityId': abilityId,
      };
}

/// Role of Dota 2 hero.
class Role {
  /// Role of Dota 2 hero.
  Role({
    required this.roleId,
    required this.level,
  });

  /// Role fromJson factory method.
  factory Role.fromJson(Map<String, dynamic> json) => Role(
        roleId: json['roleId'],
        level: json['level'],
      );

  /// Role ID of Dota 2 hero.
  final int roleId;

  /// Role level of Dota 2 hero.
  final int level;

  /// Role toJson method.
  Map<String, dynamic> toJson() => {
        'roleId': roleId,
        'level': level,
      };
}

/// Talent of Dota 2 hero.
class Talent {
  /// Talent of Dota 2 hero.
  Talent({
    required this.slot,
    required this.gameVersionId,
    required this.abilityId,
  });

  /// Talent fromJson factory method.
  factory Talent.fromJson(Map<String, dynamic> json) => Talent(
        slot: json['slot'],
        gameVersionId: json['gameVersionId'],
        abilityId: json['abilityId'],
      );

  /// Talent slot of Dota 2 hero.
  final int slot;

  /// Game version ID of Dota 2.
  final int gameVersionId;

  /// Ability ID of Dota 2 hero.
  final int abilityId;

  /// Talent toJson method.
  Map<String, dynamic> toJson() => {
        'slot': slot,
        'gameVersionId': gameVersionId,
        'abilityId': abilityId,
      };
}

/// Stat of Dota 2 hero.
class Stat {
  /// Stat of Dota 2 hero.
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

  /// Stat fromJson factory method.
  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        gameVersionId: json['gameVersionId'],
        enabled: json['enabled'],
        heroUnlockOrder: json['heroUnlockOrder'],
        team: json['team'],
        cmEnabled: json['cmEnabled'],
        newPlayerEnabled: json['newPlayerEnabled'],
        attackType: _attackTypeValues.map[json['attackType']]!,
        startingArmor: json['startingArmor'].toDouble(),
        startingMagicArmor: json['startingMagicArmor'],
        startingDamageMin: json['startingDamageMin'],
        startingDamageMax: json['startingDamageMax'],
        attackRate: json['attackRate'].toDouble(),
        attackAnimationPoint: json['attackAnimationPoint'].toDouble(),
        attackAcquisitionRange: json['attackAcquisitionRange'],
        attackRange: json['attackRange'],
        primaryAttribute:
            _primaryAttributeValues.map[json['primaryAttribute']]!,
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

  /// Game version ID of Dota 2.
  final int gameVersionId;

  /// If Dota 2 hero is enabled.
  final bool? enabled;

  /// Unlock order of Dota 2 hero.
  final double? heroUnlockOrder;

  /// If Dota 2 hero is on team.
  final bool? team;

  /// If Dota 2 hero is enabled in Captains Mode.
  final bool? cmEnabled;

  /// If Dota 2 hero is enabled for new players.
  final bool? newPlayerEnabled;

  /// Attack type of Dota 2 hero.
  final AttackType? attackType;

  /// Starting armor of Dota 2 hero.
  final double? startingArmor;

  /// Starting magic armor of Dota 2 hero.
  final double? startingMagicArmor;

  /// Starting minimum damage of Dota 2 hero.
  final double? startingDamageMin;

  /// Starting maximum damage of Dota 2 hero.
  final double? startingDamageMax;

  /// Attack rate of Dota 2 hero.
  final double? attackRate;

  /// Attack animation point of Dota 2 hero.
  final double? attackAnimationPoint;

  /// Attack acquisition range of Dota 2 hero.
  final double? attackAcquisitionRange;

  /// Attack range of Dota 2 hero.
  final double? attackRange;

  /// Primary attributes of Dota 2 hero.
  ///
  /// Primary attributes are: Agility, Strength and Intelligence.
  final PrimaryAttribute? primaryAttribute;

  /// Primary attribute of Dota 2 hero.
  final int heroPrimaryAttribute;

  /// Strength base of Dota 2 hero.
  final double? strengthBase;

  /// Strength gain of Dota 2 hero.
  final double? strengthGain;

  /// Intelligence base of Dota 2 hero.
  final double? intelligenceBase;

  /// Intelligence gain of Dota 2 hero.
  final double? intelligenceGain;

  /// Agility base of Dota 2 hero.
  final double? agilityBase;

  /// Agility gain of Dota 2 hero.
  final double? agilityGain;

  /// Health points regen of Dota 2 hero.
  final double? hpRegen;

  /// Mana points regen of Dota 2 hero.
  final double? mpRegen;

  /// Movement speed of Dota 2 hero.
  final double? moveSpeed;

  /// Turn rate move speed of Dota 2 hero.
  final double? moveTurnRate;

  /// Health points bar offset of Dota 2 hero.
  final double? hpBarOffset;

  /// Day time vision of Dota 2 hero.
  final double? visionDaytimeRange;

  /// Night time vision of Dota 2 hero.
  final double? visionNighttimeRange;

  /// Complexity of Dota 2 hero.
  final int? complexity;

  /// Stat toJson method.
  Map<String, dynamic> toJson() => {
        'gameVersionId': gameVersionId,
        'enabled': enabled,
        'heroUnlockOrder': heroUnlockOrder,
        'team': team,
        'cmEnabled': cmEnabled,
        'newPlayerEnabled': newPlayerEnabled,
        'attackType': _attackTypeValues.reverse![attackType],
        'startingArmor': startingArmor,
        'startingMagicArmor': startingMagicArmor,
        'startingDamageMin': startingDamageMin,
        'startingDamageMax': startingDamageMax,
        'attackRate': attackRate,
        'attackAnimationPoint': attackAnimationPoint,
        'attackAcquisitionRange': attackAcquisitionRange,
        'attackRange': attackRange,
        'primaryAttribute': _primaryAttributeValues.reverse![primaryAttribute],
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

/// This is what the display name, bio and hype of a Dota 2 hero in other
/// languages.
class Language {
  /// This is what the display name, bio and hype of a Dota 2 hero in other
  /// languages.
  Language({
    required this.heroId,
    required this.gameVersionId,
    required this.languageId,
    required this.displayName,
    required this.bio,
    required this.hype,
  });

  /// Language fromJson factory method.
  factory Language.fromJson(Map<String, dynamic> json) => Language(
        heroId: json['heroId'],
        gameVersionId: json['gameVersionId'],
        languageId: json['languageId'],
        displayName: json['displayName'],
        bio: json['bio'],
        hype: json['hype'],
      );

  /// Hero ID of Dota 2 hero.
  final int heroId;

  /// Game version ID of Dota 2.
  final int gameVersionId;

  /// Language ID of Dota 2.
  final int languageId;

  /// Display name of Dota 2 hero based on game version ID and language ID.
  final String displayName;

  /// Bio of Dota 2 hero based on game version ID and language ID.
  final String bio;

  /// Hype name of Dota 2 hero based on game version ID and language ID.
  final String hype;

  /// Language toJson method.
  Map<String, dynamic> toJson() => {
        'heroId': heroId,
        'gameVersionId': gameVersionId,
        'languageId': languageId,
        'displayName': displayName,
        'bio': bio,
        'hype': hype,
      };
}

/// Attack type of Dota 2 hero.
enum AttackType {
  /// Dota 2 hero with short range attack.
  melee,

  /// Dota 2 hero that fire a projectile in long range.
  ranged,
}

/// Attack type values of Dota 2 hero.
final _attackTypeValues = _EnumValues({
  'Melee': AttackType.melee,
  'Ranged': AttackType.ranged,
});

/// Primary attribute of Dota 2 hero.
enum PrimaryAttribute {
  /// It increases armor, attack speed, and the damage of Dota 2 hero.
  agility,

  /// It increases hit points, hit point regeneration, and the attack damage of
  /// Dota 2 hero.
  strength,

  /// It increases mana points, mana point regeneration, and the attack damage
  /// of Dota 2 hero.
  intelligence,
}

/// Primary attribute values of Dota 2 hero.
final _primaryAttributeValues = _EnumValues({
  'agi': PrimaryAttribute.agility,
  'int': PrimaryAttribute.intelligence,
  'str': PrimaryAttribute.strength
});

/// Extension method for PrimaryAttribute
extension PrimaryAttributeX on PrimaryAttribute {
  /// Get primary attribute name.
  String? get name => {
        PrimaryAttribute.agility: 'Agility',
        PrimaryAttribute.intelligence: 'Intelligence',
        PrimaryAttribute.strength: 'Strength',
      }[this];
}

/// Enum value helper class for this model.
class _EnumValues<T> {
  /// Enum value helper class for this model.
  _EnumValues(this.map);

  /// Map of Enum values.
  Map<String, T> map;

  /// Reverse Map of Enum values.
  Map<T, String>? reverseMap;

  /// Reverse this Enum values to String.
  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
