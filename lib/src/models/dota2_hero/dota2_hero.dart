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
        abilities: List<_Ability>.from(
            json['abilities'].map((x) => _Ability._fromJson(x))),
        roles: List<_Role>.from(json['roles'].map((x) => _Role._fromJson(x))),
        talents: List<_Talent>.from(
            json['talents'].map((x) => _Talent._fromJson(x))),
        stat: _Stat._fromJson(json['stat']),
        language: _Language._fromJson(json['language']),
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
  final List<_Ability?> abilities;

  /// Roles of Dota 2 hero.
  final List<_Role?> roles;

  /// Talents of Dota 2 hero.
  final List<_Talent?> talents;

  /// Stat of Dota 2 hero.
  final _Stat stat;

  /// This is what the display name, bio and hype of a Dota 2 hero in other
  /// languages.
  final _Language language;

  /// Aliases of Dota 2 hero.
  final List<String?> aliases;

  /// Dota 2 Hero toJson method.
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'displayName': displayName,
        'shortName': shortName,
        'abilities': List<dynamic>.from(abilities.map((x) => x!._toJson())),
        'roles': List<dynamic>.from(roles.map((x) => x!._toJson())),
        'talents': List<dynamic>.from(talents.map((x) => x!._toJson())),
        'stat': stat._toJson(),
        'language': language._toJson(),
        'aliases': List<dynamic>.from(aliases.map((x) => x)),
      };
}

/// Ability of Dota 2 hero.
class _Ability {
  /// Ability of Dota 2 hero.
  _Ability({required this.slot, required this.abilityId});

  /// Ability fromJson factory method.
  factory _Ability._fromJson(Map<String, dynamic> json) => _Ability(
        slot: json['slot'],
        abilityId: json['abilityId'],
      );

  /// Ability slot of Dota 2 hero.
  final int slot;

  /// Ability ID of Dota 2 hero.
  final int abilityId;

  /// Ability toJson method.
  Map<String, dynamic> _toJson() => {
        'slot': slot,
        'abilityId': abilityId,
      };
}

/// Role of Dota 2 hero.
class _Role {
  /// Role of Dota 2 hero.
  _Role({
    required this.roleId,
    required this.level,
  });

  /// Role fromJson factory method.
  factory _Role._fromJson(Map<String, dynamic> json) => _Role(
        roleId: json['roleId'],
        level: json['level'],
      );

  /// Role ID of Dota 2 hero.
  final int roleId;

  /// Role level of Dota 2 hero.
  final int level;

  /// Role toJson method.
  Map<String, dynamic> _toJson() => {
        'roleId': roleId,
        'level': level,
      };
}

/// Talent of Dota 2 hero.
class _Talent {
  /// Talent of Dota 2 hero.
  _Talent({
    required this.slot,
    required this.gameVersionId,
    required this.abilityId,
  });

  /// Talent fromJson factory method.
  factory _Talent._fromJson(Map<String, dynamic> json) => _Talent(
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
  Map<String, dynamic> _toJson() => {
        'slot': slot,
        'gameVersionId': gameVersionId,
        'abilityId': abilityId,
      };
}

/// Stat of Dota 2 hero.
class _Stat {
  /// Stat of Dota 2 hero.
  _Stat({
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
  factory _Stat._fromJson(Map<String, dynamic> json) => _Stat(
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
  ///
  /// Call `name` to get the String representation.
  final _AttackType? attackType;

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
  ///
  /// Call `name` to get the String representation.
  final _PrimaryAttribute? primaryAttribute;

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
  Map<String, dynamic> _toJson() => {
        'gameVersionId': gameVersionId,
        'enabled': enabled,
        'heroUnlockOrder': heroUnlockOrder,
        'team': team,
        'cmEnabled': cmEnabled,
        'newPlayerEnabled': newPlayerEnabled,
        'attackType': _attackTypeValues._reverse![attackType],
        'startingArmor': startingArmor,
        'startingMagicArmor': startingMagicArmor,
        'startingDamageMin': startingDamageMin,
        'startingDamageMax': startingDamageMax,
        'attackRate': attackRate,
        'attackAnimationPoint': attackAnimationPoint,
        'attackAcquisitionRange': attackAcquisitionRange,
        'attackRange': attackRange,
        'primaryAttribute': _primaryAttributeValues._reverse![primaryAttribute],
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
class _Language {
  /// This is what the display name, bio and hype of a Dota 2 hero in other
  /// languages.
  _Language({
    required this.heroId,
    required this.gameVersionId,
    required this.languageId,
    required this.displayName,
    required this.bio,
    required this.hype,
  });

  /// Language fromJson factory method.
  factory _Language._fromJson(Map<String, dynamic> json) => _Language(
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
  Map<String, dynamic> _toJson() => {
        'heroId': heroId,
        'gameVersionId': gameVersionId,
        'languageId': languageId,
        'displayName': displayName,
        'bio': bio,
        'hype': hype,
      };
}

/// Attack type of Dota 2 hero.
enum _AttackType {
  /// Dota 2 hero with short range attack.
  melee,

  /// Dota 2 hero that fire a projectile in long range.
  ranged,
}

/// Attack type values of Dota 2 hero.
final _attackTypeValues = _EnumValues({
  'Melee': _AttackType.melee,
  'Ranged': _AttackType.ranged,
});

/// Extension method for Attack type
extension AttackTypeX on _AttackType {
  /// Get attack type name.
  String? get name => {
        _AttackType.melee: 'Melee',
        _AttackType.ranged: 'Ranged',
      }[this];
}

/// Primary attribute of Dota 2 hero.
enum _PrimaryAttribute {
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
  'agi': _PrimaryAttribute.agility,
  'int': _PrimaryAttribute.intelligence,
  'str': _PrimaryAttribute.strength
});

/// Extension method for PrimaryAttribute
extension PrimaryAttributeX on _PrimaryAttribute {
  /// Get primary attribute name.
  String? get name => {
        _PrimaryAttribute.agility: 'Agility',
        _PrimaryAttribute.intelligence: 'Intelligence',
        _PrimaryAttribute.strength: 'Strength',
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
  Map<T, String>? get _reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
