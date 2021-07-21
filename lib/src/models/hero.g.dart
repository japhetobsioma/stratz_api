// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hero _$_$_HeroFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Hero', json, () {
    final val = _$_Hero(
      id: $checkedConvert(json, 'id', (v) => v as int),
      name: $checkedConvert(json, 'name', (v) => v as String),
      displayName: $checkedConvert(json, 'displayName', (v) => v as String),
      shortName: $checkedConvert(json, 'shortName', (v) => v as String),
      abilities: $checkedConvert(
          json,
          'abilities',
          (v) => (v as List<dynamic>)
              .map((e) => Ability.fromJson(e as Map<String, dynamic>))
              .toList()),
      roles: $checkedConvert(
          json,
          'roles',
          (v) => (v as List<dynamic>)
              .map((e) => Role.fromJson(e as Map<String, dynamic>))
              .toList()),
      talents: $checkedConvert(
          json,
          'talents',
          (v) => (v as List<dynamic>)
              .map((e) => Talent.fromJson(e as Map<String, dynamic>))
              .toList()),
      stat: $checkedConvert(
          json, 'stat', (v) => Stat.fromJson(v as Map<String, dynamic>)),
      language: $checkedConvert(json, 'language',
          (v) => Language.fromJson(v as Map<String, dynamic>)),
      aliases: $checkedConvert(json, 'aliases',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
    );
    return val;
  });
}

_$_Ability _$_$_AbilityFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Ability', json, () {
    final val = _$_Ability(
      slot: $checkedConvert(json, 'slot', (v) => v as int),
      abilityId: $checkedConvert(json, 'abilityId', (v) => v as int),
    );
    return val;
  });
}

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Language', json, () {
    final val = _$_Language(
      heroId: $checkedConvert(json, 'heroId', (v) => v as int),
      gameVersionId: $checkedConvert(json, 'gameVersionId', (v) => v as int),
      languageId: $checkedConvert(json, 'languageId', (v) => v as int),
      displayName: $checkedConvert(json, 'displayName', (v) => v as String),
      bio: $checkedConvert(json, 'bio', (v) => v as String),
      hype: $checkedConvert(json, 'hype', (v) => v as String),
    );
    return val;
  });
}

_$_Role _$_$_RoleFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Role', json, () {
    final val = _$_Role(
      roleId: $checkedConvert(json, 'roleId', (v) => v as int),
      level: $checkedConvert(json, 'level', (v) => v as int),
    );
    return val;
  });
}

_$_Stat _$_$_StatFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Stat', json, () {
    final val = _$_Stat(
      gameVersionId: $checkedConvert(json, 'gameVersionId', (v) => v as int),
      enabled: $checkedConvert(json, 'enabled', (v) => v as bool),
      heroUnlockOrder:
          $checkedConvert(json, 'heroUnlockOrder', (v) => v as int),
      team: $checkedConvert(json, 'team', (v) => v as bool),
      cmEnabled: $checkedConvert(json, 'cmEnabled', (v) => v as bool),
      newPlayerEnabled:
          $checkedConvert(json, 'newPlayerEnabled', (v) => v as bool),
      attackType: $checkedConvert(
          json, 'attackType', (v) => _$enumDecode(_$AttackTypeEnumMap, v)),
      startingArmor:
          $checkedConvert(json, 'startingArmor', (v) => (v as num).toDouble()),
      startingMagicArmor:
          $checkedConvert(json, 'startingMagicArmor', (v) => v as int),
      startingDamageMin:
          $checkedConvert(json, 'startingDamageMin', (v) => v as int),
      startingDamageMax:
          $checkedConvert(json, 'startingDamageMax', (v) => v as int),
      attackRate:
          $checkedConvert(json, 'attackRate', (v) => (v as num).toDouble()),
      attackAnimationPoint: $checkedConvert(
          json, 'attackAnimationPoint', (v) => (v as num).toDouble()),
      attackAcquisitionRange:
          $checkedConvert(json, 'attackAcquisitionRange', (v) => v as int),
      attackRange: $checkedConvert(json, 'attackRange', (v) => v as int),
      primaryAttribute: $checkedConvert(json, 'primaryAttribute',
          (v) => _$enumDecode(_$PrimaryAttributeEnumMap, v)),
      heroPrimaryAttribute:
          $checkedConvert(json, 'heroPrimaryAttribute', (v) => v as int),
      strengthBase: $checkedConvert(json, 'strengthBase', (v) => v as int),
      strengthGain:
          $checkedConvert(json, 'strengthGain', (v) => (v as num).toDouble()),
      intelligenceBase:
          $checkedConvert(json, 'intelligenceBase', (v) => v as int),
      intelligenceGain: $checkedConvert(
          json, 'intelligenceGain', (v) => (v as num).toDouble()),
      agilityBase: $checkedConvert(json, 'agilityBase', (v) => v as int),
      agilityGain:
          $checkedConvert(json, 'agilityGain', (v) => (v as num).toDouble()),
      hpRegen: $checkedConvert(json, 'hpRegen', (v) => (v as num).toDouble()),
      mpRegen: $checkedConvert(json, 'mpRegen', (v) => (v as num).toDouble()),
      moveSpeed: $checkedConvert(json, 'moveSpeed', (v) => v as int),
      moveTurnRate:
          $checkedConvert(json, 'moveTurnRate', (v) => (v as num).toDouble()),
      hpBarOffset: $checkedConvert(json, 'hpBarOffset', (v) => v as int),
      visionDaytimeRange:
          $checkedConvert(json, 'visionDaytimeRange', (v) => v as int),
      visionNighttimeRange:
          $checkedConvert(json, 'visionNighttimeRange', (v) => v as int),
      complexity: $checkedConvert(json, 'complexity', (v) => v as int),
    );
    return val;
  });
}

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
  return $checkedNew(r'_$_Talent', json, () {
    final val = _$_Talent(
      slot: $checkedConvert(json, 'slot', (v) => v as int),
      gameVersionId: $checkedConvert(json, 'gameVersionId', (v) => v as int),
      abilityId: $checkedConvert(json, 'abilityId', (v) => v as int),
    );
    return val;
  });
}
