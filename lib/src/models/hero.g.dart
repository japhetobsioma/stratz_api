// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hero _$_$_HeroFromJson(Map<String, dynamic> json) {
  return _$_Hero(
    id: json['id'] as int,
    name: json['name'] as String,
    displayName: json['displayName'] as String,
    shortName: json['shortName'] as String,
    abilities: (json['abilities'] as List<dynamic>)
        .map((e) => Ability.fromJson(e as Map<String, dynamic>))
        .toList(),
    roles: (json['roles'] as List<dynamic>)
        .map((e) => Role.fromJson(e as Map<String, dynamic>))
        .toList(),
    talents: (json['talents'] as List<dynamic>)
        .map((e) => Talent.fromJson(e as Map<String, dynamic>))
        .toList(),
    stat: Stat.fromJson(json['stat'] as Map<String, dynamic>),
    language: Language.fromJson(json['language'] as Map<String, dynamic>),
    aliases:
        (json['aliases'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_HeroToJson(_$_Hero instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayName': instance.displayName,
      'shortName': instance.shortName,
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'talents': instance.talents.map((e) => e.toJson()).toList(),
      'stat': instance.stat.toJson(),
      'language': instance.language.toJson(),
      'aliases': instance.aliases,
    };

_$_Ability _$_$_AbilityFromJson(Map<String, dynamic> json) {
  return _$_Ability(
    slot: json['slot'] as int,
    abilityId: json['abilityId'] as int,
  );
}

Map<String, dynamic> _$_$_AbilityToJson(_$_Ability instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'abilityId': instance.abilityId,
    };

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return _$_Language(
    heroId: json['heroId'] as int,
    gameVersionId: json['gameVersionId'] as int,
    languageId: json['languageId'] as int,
    displayName: json['displayName'] as String,
    bio: json['bio'] as String,
    hype: json['hype'] as String,
  );
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'heroId': instance.heroId,
      'gameVersionId': instance.gameVersionId,
      'languageId': instance.languageId,
      'displayName': instance.displayName,
      'bio': instance.bio,
      'hype': instance.hype,
    };

_$_Role _$_$_RoleFromJson(Map<String, dynamic> json) {
  return _$_Role(
    roleId: json['roleId'] as int,
    level: json['level'] as int,
  );
}

Map<String, dynamic> _$_$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'roleId': instance.roleId,
      'level': instance.level,
    };

_$_Stat _$_$_StatFromJson(Map<String, dynamic> json) {
  return _$_Stat(
    gameVersionId: json['gameVersionId'] as int,
    enabled: json['enabled'] as bool,
    heroUnlockOrder: json['heroUnlockOrder'] as int,
    team: json['team'] as bool,
    cmEnabled: json['cmEnabled'] as bool,
    newPlayerEnabled: json['newPlayerEnabled'] as bool,
    attackType: _$enumDecode(_$AttackTypeEnumMap, json['attackType']),
    startingArmor: (json['startingArmor'] as num).toDouble(),
    startingMagicArmor: json['startingMagicArmor'] as int,
    startingDamageMin: json['startingDamageMin'] as int,
    startingDamageMax: json['startingDamageMax'] as int,
    attackRate: (json['attackRate'] as num).toDouble(),
    attackAnimationPoint: (json['attackAnimationPoint'] as num).toDouble(),
    attackAcquisitionRange: json['attackAcquisitionRange'] as int,
    attackRange: json['attackRange'] as int,
    primaryAttribute:
        _$enumDecode(_$PrimaryAttributeEnumMap, json['primaryAttribute']),
    heroPrimaryAttribute: json['heroPrimaryAttribute'] as int,
    strengthBase: json['strengthBase'] as int,
    strengthGain: (json['strengthGain'] as num).toDouble(),
    intelligenceBase: json['intelligenceBase'] as int,
    intelligenceGain: (json['intelligenceGain'] as num).toDouble(),
    agilityBase: json['agilityBase'] as int,
    agilityGain: (json['agilityGain'] as num).toDouble(),
    hpRegen: (json['hpRegen'] as num).toDouble(),
    mpRegen: (json['mpRegen'] as num).toDouble(),
    moveSpeed: json['moveSpeed'] as int,
    moveTurnRate: (json['moveTurnRate'] as num).toDouble(),
    hpBarOffset: json['hpBarOffset'] as int,
    visionDaytimeRange: json['visionDaytimeRange'] as int,
    visionNighttimeRange: json['visionNighttimeRange'] as int,
    complexity: json['complexity'] as int,
  );
}

Map<String, dynamic> _$_$_StatToJson(_$_Stat instance) => <String, dynamic>{
      'gameVersionId': instance.gameVersionId,
      'enabled': instance.enabled,
      'heroUnlockOrder': instance.heroUnlockOrder,
      'team': instance.team,
      'cmEnabled': instance.cmEnabled,
      'newPlayerEnabled': instance.newPlayerEnabled,
      'attackType': _$AttackTypeEnumMap[instance.attackType],
      'startingArmor': instance.startingArmor,
      'startingMagicArmor': instance.startingMagicArmor,
      'startingDamageMin': instance.startingDamageMin,
      'startingDamageMax': instance.startingDamageMax,
      'attackRate': instance.attackRate,
      'attackAnimationPoint': instance.attackAnimationPoint,
      'attackAcquisitionRange': instance.attackAcquisitionRange,
      'attackRange': instance.attackRange,
      'primaryAttribute': _$PrimaryAttributeEnumMap[instance.primaryAttribute],
      'heroPrimaryAttribute': instance.heroPrimaryAttribute,
      'strengthBase': instance.strengthBase,
      'strengthGain': instance.strengthGain,
      'intelligenceBase': instance.intelligenceBase,
      'intelligenceGain': instance.intelligenceGain,
      'agilityBase': instance.agilityBase,
      'agilityGain': instance.agilityGain,
      'hpRegen': instance.hpRegen,
      'mpRegen': instance.mpRegen,
      'moveSpeed': instance.moveSpeed,
      'moveTurnRate': instance.moveTurnRate,
      'hpBarOffset': instance.hpBarOffset,
      'visionDaytimeRange': instance.visionDaytimeRange,
      'visionNighttimeRange': instance.visionNighttimeRange,
      'complexity': instance.complexity,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$AttackTypeEnumMap = {
  AttackType.melee: 'melee',
  AttackType.ranged: 'ranged',
};

const _$PrimaryAttributeEnumMap = {
  PrimaryAttribute.agility: 'agility',
  PrimaryAttribute.strength: 'strength',
  PrimaryAttribute.intelligence: 'intelligence',
};

_$_Talent _$_$_TalentFromJson(Map<String, dynamic> json) {
  return _$_Talent(
    slot: json['slot'] as int,
    gameVersionId: json['gameVersionId'] as int,
    abilityId: json['abilityId'] as int,
  );
}

Map<String, dynamic> _$_$_TalentToJson(_$_Talent instance) => <String, dynamic>{
      'slot': instance.slot,
      'gameVersionId': instance.gameVersionId,
      'abilityId': instance.abilityId,
    };
