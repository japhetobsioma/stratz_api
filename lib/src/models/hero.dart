import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero.freezed.dart';
part 'hero.g.dart';

Map<String, Hero> heroFromJson(String str) => Map.from(json.decode(str))
    .map((k, v) => MapEntry<String, Hero>(k, Hero.fromJson(v)));

String heroToJson(Map<String, Hero> data) => json.encode(
    Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

@freezed
class Hero with _$Hero {
  const factory Hero({
    required int id,
    required String name,
    required String displayName,
    required String shortName,
    required List<Ability> abilities,
    required List<Role> roles,
    required List<Talent> talents,
    required Stat stat,
    required Language language,
    required List<String> aliases,
  }) = _Hero;

  factory Hero.fromJson(Map<String, dynamic> json) => _$HeroFromJson(json);
}

@freezed
class Ability with _$Ability {
  const factory Ability({required int slot, required int abilityId}) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}

@freezed
class Language with _$Language {
  const factory Language({
    required int heroId,
    required int gameVersionId,
    required int languageId,
    required String displayName,
    required String bio,
    required String hype,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({required int roleId, required int level}) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
class Stat with _$Stat {
  const factory Stat({
    required int gameVersionId,
    required bool enabled,
    required int heroUnlockOrder,
    required bool team,
    required bool cmEnabled,
    required bool newPlayerEnabled,
    required AttackType attackType,
    required double startingArmor,
    required int startingMagicArmor,
    required int startingDamageMin,
    required int startingDamageMax,
    required double attackRate,
    required double attackAnimationPoint,
    required int attackAcquisitionRange,
    required int attackRange,
    required PrimaryAttribute primaryAttribute,
    required int heroPrimaryAttribute,
    required int strengthBase,
    required double strengthGain,
    required int intelligenceBase,
    required double intelligenceGain,
    required int agilityBase,
    required double agilityGain,
    required double hpRegen,
    required double mpRegen,
    required int moveSpeed,
    required double moveTurnRate,
    required int hpBarOffset,
    required int visionDaytimeRange,
    required int visionNighttimeRange,
    required int complexity,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

enum AttackType { melee, ranged }

final attackTypeValues = EnumValues({
  'Melee': AttackType.melee,
  'Ranged': AttackType.ranged,
});

enum PrimaryAttribute { agility, strength, intelligence }

final primaryAttributeValues = EnumValues({
  'agi': PrimaryAttribute.agility,
  'int': PrimaryAttribute.intelligence,
  'str': PrimaryAttribute.strength
});

@freezed
class Talent with _$Talent {
  const factory Talent({
    required int slot,
    required int gameVersionId,
    required int abilityId,
  }) = _Talent;

  factory Talent.fromJson(Map<String, dynamic> json) => _$TalentFromJson(json);
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
