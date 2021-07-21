// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hero _$HeroFromJson(Map<String, dynamic> json) {
  return _Hero.fromJson(json);
}

/// @nodoc
class _$HeroTearOff {
  const _$HeroTearOff();

  _Hero call(
      {required int id,
      required String name,
      required String displayName,
      required String shortName,
      required List<Ability> abilities,
      required List<Role> roles,
      required List<Talent> talents,
      required Stat stat,
      required Language language,
      required List<String> aliases}) {
    return _Hero(
      id: id,
      name: name,
      displayName: displayName,
      shortName: shortName,
      abilities: abilities,
      roles: roles,
      talents: talents,
      stat: stat,
      language: language,
      aliases: aliases,
    );
  }

  Hero fromJson(Map<String, Object> json) {
    return Hero.fromJson(json);
  }
}

/// @nodoc
const $Hero = _$HeroTearOff();

/// @nodoc
mixin _$Hero {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get shortName => throw _privateConstructorUsedError;
  List<Ability> get abilities => throw _privateConstructorUsedError;
  List<Role> get roles => throw _privateConstructorUsedError;
  List<Talent> get talents => throw _privateConstructorUsedError;
  Stat get stat => throw _privateConstructorUsedError;
  Language get language => throw _privateConstructorUsedError;
  List<String> get aliases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeroCopyWith<Hero> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroCopyWith<$Res> {
  factory $HeroCopyWith(Hero value, $Res Function(Hero) then) =
      _$HeroCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String displayName,
      String shortName,
      List<Ability> abilities,
      List<Role> roles,
      List<Talent> talents,
      Stat stat,
      Language language,
      List<String> aliases});

  $StatCopyWith<$Res> get stat;
  $LanguageCopyWith<$Res> get language;
}

/// @nodoc
class _$HeroCopyWithImpl<$Res> implements $HeroCopyWith<$Res> {
  _$HeroCopyWithImpl(this._value, this._then);

  final Hero _value;
  // ignore: unused_field
  final $Res Function(Hero) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? shortName = freezed,
    Object? abilities = freezed,
    Object? roles = freezed,
    Object? talents = freezed,
    Object? stat = freezed,
    Object? language = freezed,
    Object? aliases = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
      talents: talents == freezed
          ? _value.talents
          : talents // ignore: cast_nullable_to_non_nullable
              as List<Talent>,
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      aliases: aliases == freezed
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $StatCopyWith<$Res> get stat {
    return $StatCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value));
    });
  }

  @override
  $LanguageCopyWith<$Res> get language {
    return $LanguageCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

/// @nodoc
abstract class _$HeroCopyWith<$Res> implements $HeroCopyWith<$Res> {
  factory _$HeroCopyWith(_Hero value, $Res Function(_Hero) then) =
      __$HeroCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String displayName,
      String shortName,
      List<Ability> abilities,
      List<Role> roles,
      List<Talent> talents,
      Stat stat,
      Language language,
      List<String> aliases});

  @override
  $StatCopyWith<$Res> get stat;
  @override
  $LanguageCopyWith<$Res> get language;
}

/// @nodoc
class __$HeroCopyWithImpl<$Res> extends _$HeroCopyWithImpl<$Res>
    implements _$HeroCopyWith<$Res> {
  __$HeroCopyWithImpl(_Hero _value, $Res Function(_Hero) _then)
      : super(_value, (v) => _then(v as _Hero));

  @override
  _Hero get _value => super._value as _Hero;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? shortName = freezed,
    Object? abilities = freezed,
    Object? roles = freezed,
    Object? talents = freezed,
    Object? stat = freezed,
    Object? language = freezed,
    Object? aliases = freezed,
  }) {
    return _then(_Hero(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
      talents: talents == freezed
          ? _value.talents
          : talents // ignore: cast_nullable_to_non_nullable
              as List<Talent>,
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
      aliases: aliases == freezed
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hero with DiagnosticableTreeMixin implements _Hero {
  const _$_Hero(
      {required this.id,
      required this.name,
      required this.displayName,
      required this.shortName,
      required this.abilities,
      required this.roles,
      required this.talents,
      required this.stat,
      required this.language,
      required this.aliases});

  factory _$_Hero.fromJson(Map<String, dynamic> json) =>
      _$_$_HeroFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String displayName;
  @override
  final String shortName;
  @override
  final List<Ability> abilities;
  @override
  final List<Role> roles;
  @override
  final List<Talent> talents;
  @override
  final Stat stat;
  @override
  final Language language;
  @override
  final List<String> aliases;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Hero(id: $id, name: $name, displayName: $displayName, shortName: $shortName, abilities: $abilities, roles: $roles, talents: $talents, stat: $stat, language: $language, aliases: $aliases)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Hero'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('shortName', shortName))
      ..add(DiagnosticsProperty('abilities', abilities))
      ..add(DiagnosticsProperty('roles', roles))
      ..add(DiagnosticsProperty('talents', talents))
      ..add(DiagnosticsProperty('stat', stat))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('aliases', aliases));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hero &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.abilities, abilities) ||
                const DeepCollectionEquality()
                    .equals(other.abilities, abilities)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.talents, talents) ||
                const DeepCollectionEquality()
                    .equals(other.talents, talents)) &&
            (identical(other.stat, stat) ||
                const DeepCollectionEquality().equals(other.stat, stat)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.aliases, aliases) ||
                const DeepCollectionEquality().equals(other.aliases, aliases)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(abilities) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(talents) ^
      const DeepCollectionEquality().hash(stat) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(aliases);

  @JsonKey(ignore: true)
  @override
  _$HeroCopyWith<_Hero> get copyWith =>
      __$HeroCopyWithImpl<_Hero>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeroToJson(this);
  }
}

abstract class _Hero implements Hero {
  const factory _Hero(
      {required int id,
      required String name,
      required String displayName,
      required String shortName,
      required List<Ability> abilities,
      required List<Role> roles,
      required List<Talent> talents,
      required Stat stat,
      required Language language,
      required List<String> aliases}) = _$_Hero;

  factory _Hero.fromJson(Map<String, dynamic> json) = _$_Hero.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get shortName => throw _privateConstructorUsedError;
  @override
  List<Ability> get abilities => throw _privateConstructorUsedError;
  @override
  List<Role> get roles => throw _privateConstructorUsedError;
  @override
  List<Talent> get talents => throw _privateConstructorUsedError;
  @override
  Stat get stat => throw _privateConstructorUsedError;
  @override
  Language get language => throw _privateConstructorUsedError;
  @override
  List<String> get aliases => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeroCopyWith<_Hero> get copyWith => throw _privateConstructorUsedError;
}

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return _Ability.fromJson(json);
}

/// @nodoc
class _$AbilityTearOff {
  const _$AbilityTearOff();

  _Ability call({required int slot, required int abilityId}) {
    return _Ability(
      slot: slot,
      abilityId: abilityId,
    );
  }

  Ability fromJson(Map<String, Object> json) {
    return Ability.fromJson(json);
  }
}

/// @nodoc
const $Ability = _$AbilityTearOff();

/// @nodoc
mixin _$Ability {
  int get slot => throw _privateConstructorUsedError;
  int get abilityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityCopyWith<Ability> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityCopyWith<$Res> {
  factory $AbilityCopyWith(Ability value, $Res Function(Ability) then) =
      _$AbilityCopyWithImpl<$Res>;
  $Res call({int slot, int abilityId});
}

/// @nodoc
class _$AbilityCopyWithImpl<$Res> implements $AbilityCopyWith<$Res> {
  _$AbilityCopyWithImpl(this._value, this._then);

  final Ability _value;
  // ignore: unused_field
  final $Res Function(Ability) _then;

  @override
  $Res call({
    Object? slot = freezed,
    Object? abilityId = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      abilityId: abilityId == freezed
          ? _value.abilityId
          : abilityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AbilityCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$AbilityCopyWith(_Ability value, $Res Function(_Ability) then) =
      __$AbilityCopyWithImpl<$Res>;
  @override
  $Res call({int slot, int abilityId});
}

/// @nodoc
class __$AbilityCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$AbilityCopyWith<$Res> {
  __$AbilityCopyWithImpl(_Ability _value, $Res Function(_Ability) _then)
      : super(_value, (v) => _then(v as _Ability));

  @override
  _Ability get _value => super._value as _Ability;

  @override
  $Res call({
    Object? slot = freezed,
    Object? abilityId = freezed,
  }) {
    return _then(_Ability(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      abilityId: abilityId == freezed
          ? _value.abilityId
          : abilityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ability with DiagnosticableTreeMixin implements _Ability {
  const _$_Ability({required this.slot, required this.abilityId});

  factory _$_Ability.fromJson(Map<String, dynamic> json) =>
      _$_$_AbilityFromJson(json);

  @override
  final int slot;
  @override
  final int abilityId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ability(slot: $slot, abilityId: $abilityId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ability'))
      ..add(DiagnosticsProperty('slot', slot))
      ..add(DiagnosticsProperty('abilityId', abilityId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ability &&
            (identical(other.slot, slot) ||
                const DeepCollectionEquality().equals(other.slot, slot)) &&
            (identical(other.abilityId, abilityId) ||
                const DeepCollectionEquality()
                    .equals(other.abilityId, abilityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slot) ^
      const DeepCollectionEquality().hash(abilityId);

  @JsonKey(ignore: true)
  @override
  _$AbilityCopyWith<_Ability> get copyWith =>
      __$AbilityCopyWithImpl<_Ability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AbilityToJson(this);
  }
}

abstract class _Ability implements Ability {
  const factory _Ability({required int slot, required int abilityId}) =
      _$_Ability;

  factory _Ability.fromJson(Map<String, dynamic> json) = _$_Ability.fromJson;

  @override
  int get slot => throw _privateConstructorUsedError;
  @override
  int get abilityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AbilityCopyWith<_Ability> get copyWith =>
      throw _privateConstructorUsedError;
}

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
class _$LanguageTearOff {
  const _$LanguageTearOff();

  _Language call(
      {required int heroId,
      required int gameVersionId,
      required int languageId,
      required String displayName,
      required String bio,
      required String hype}) {
    return _Language(
      heroId: heroId,
      gameVersionId: gameVersionId,
      languageId: languageId,
      displayName: displayName,
      bio: bio,
      hype: hype,
    );
  }

  Language fromJson(Map<String, Object> json) {
    return Language.fromJson(json);
  }
}

/// @nodoc
const $Language = _$LanguageTearOff();

/// @nodoc
mixin _$Language {
  int get heroId => throw _privateConstructorUsedError;
  int get gameVersionId => throw _privateConstructorUsedError;
  int get languageId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get hype => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call(
      {int heroId,
      int gameVersionId,
      int languageId,
      String displayName,
      String bio,
      String hype});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? heroId = freezed,
    Object? gameVersionId = freezed,
    Object? languageId = freezed,
    Object? displayName = freezed,
    Object? bio = freezed,
    Object? hype = freezed,
  }) {
    return _then(_value.copyWith(
      heroId: heroId == freezed
          ? _value.heroId
          : heroId // ignore: cast_nullable_to_non_nullable
              as int,
      gameVersionId: gameVersionId == freezed
          ? _value.gameVersionId
          : gameVersionId // ignore: cast_nullable_to_non_nullable
              as int,
      languageId: languageId == freezed
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      hype: hype == freezed
          ? _value.hype
          : hype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) then) =
      __$LanguageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int heroId,
      int gameVersionId,
      int languageId,
      String displayName,
      String bio,
      String hype});
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(_Language _value, $Res Function(_Language) _then)
      : super(_value, (v) => _then(v as _Language));

  @override
  _Language get _value => super._value as _Language;

  @override
  $Res call({
    Object? heroId = freezed,
    Object? gameVersionId = freezed,
    Object? languageId = freezed,
    Object? displayName = freezed,
    Object? bio = freezed,
    Object? hype = freezed,
  }) {
    return _then(_Language(
      heroId: heroId == freezed
          ? _value.heroId
          : heroId // ignore: cast_nullable_to_non_nullable
              as int,
      gameVersionId: gameVersionId == freezed
          ? _value.gameVersionId
          : gameVersionId // ignore: cast_nullable_to_non_nullable
              as int,
      languageId: languageId == freezed
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      hype: hype == freezed
          ? _value.hype
          : hype // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Language with DiagnosticableTreeMixin implements _Language {
  const _$_Language(
      {required this.heroId,
      required this.gameVersionId,
      required this.languageId,
      required this.displayName,
      required this.bio,
      required this.hype});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFromJson(json);

  @override
  final int heroId;
  @override
  final int gameVersionId;
  @override
  final int languageId;
  @override
  final String displayName;
  @override
  final String bio;
  @override
  final String hype;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Language(heroId: $heroId, gameVersionId: $gameVersionId, languageId: $languageId, displayName: $displayName, bio: $bio, hype: $hype)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Language'))
      ..add(DiagnosticsProperty('heroId', heroId))
      ..add(DiagnosticsProperty('gameVersionId', gameVersionId))
      ..add(DiagnosticsProperty('languageId', languageId))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('hype', hype));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
            (identical(other.heroId, heroId) ||
                const DeepCollectionEquality().equals(other.heroId, heroId)) &&
            (identical(other.gameVersionId, gameVersionId) ||
                const DeepCollectionEquality()
                    .equals(other.gameVersionId, gameVersionId)) &&
            (identical(other.languageId, languageId) ||
                const DeepCollectionEquality()
                    .equals(other.languageId, languageId)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.hype, hype) ||
                const DeepCollectionEquality().equals(other.hype, hype)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heroId) ^
      const DeepCollectionEquality().hash(gameVersionId) ^
      const DeepCollectionEquality().hash(languageId) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(hype);

  @JsonKey(ignore: true)
  @override
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageToJson(this);
  }
}

abstract class _Language implements Language {
  const factory _Language(
      {required int heroId,
      required int gameVersionId,
      required int languageId,
      required String displayName,
      required String bio,
      required String hype}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  int get heroId => throw _privateConstructorUsedError;
  @override
  int get gameVersionId => throw _privateConstructorUsedError;
  @override
  int get languageId => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get bio => throw _privateConstructorUsedError;
  @override
  String get hype => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
class _$RoleTearOff {
  const _$RoleTearOff();

  _Role call({required int roleId, required int level}) {
    return _Role(
      roleId: roleId,
      level: level,
    );
  }

  Role fromJson(Map<String, Object> json) {
    return Role.fromJson(json);
  }
}

/// @nodoc
const $Role = _$RoleTearOff();

/// @nodoc
mixin _$Role {
  int get roleId => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res>;
  $Res call({int roleId, int level});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res> implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  final Role _value;
  // ignore: unused_field
  final $Res Function(Role) _then;

  @override
  $Res call({
    Object? roleId = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$RoleCopyWith(_Role value, $Res Function(_Role) then) =
      __$RoleCopyWithImpl<$Res>;
  @override
  $Res call({int roleId, int level});
}

/// @nodoc
class __$RoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res>
    implements _$RoleCopyWith<$Res> {
  __$RoleCopyWithImpl(_Role _value, $Res Function(_Role) _then)
      : super(_value, (v) => _then(v as _Role));

  @override
  _Role get _value => super._value as _Role;

  @override
  $Res call({
    Object? roleId = freezed,
    Object? level = freezed,
  }) {
    return _then(_Role(
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Role with DiagnosticableTreeMixin implements _Role {
  const _$_Role({required this.roleId, required this.level});

  factory _$_Role.fromJson(Map<String, dynamic> json) =>
      _$_$_RoleFromJson(json);

  @override
  final int roleId;
  @override
  final int level;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Role(roleId: $roleId, level: $level)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Role'))
      ..add(DiagnosticsProperty('roleId', roleId))
      ..add(DiagnosticsProperty('level', level));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Role &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(level);

  @JsonKey(ignore: true)
  @override
  _$RoleCopyWith<_Role> get copyWith =>
      __$RoleCopyWithImpl<_Role>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoleToJson(this);
  }
}

abstract class _Role implements Role {
  const factory _Role({required int roleId, required int level}) = _$_Role;

  factory _Role.fromJson(Map<String, dynamic> json) = _$_Role.fromJson;

  @override
  int get roleId => throw _privateConstructorUsedError;
  @override
  int get level => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RoleCopyWith<_Role> get copyWith => throw _privateConstructorUsedError;
}

Stat _$StatFromJson(Map<String, dynamic> json) {
  return _Stat.fromJson(json);
}

/// @nodoc
class _$StatTearOff {
  const _$StatTearOff();

  _Stat call(
      {required int gameVersionId,
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
      required int complexity}) {
    return _Stat(
      gameVersionId: gameVersionId,
      enabled: enabled,
      heroUnlockOrder: heroUnlockOrder,
      team: team,
      cmEnabled: cmEnabled,
      newPlayerEnabled: newPlayerEnabled,
      attackType: attackType,
      startingArmor: startingArmor,
      startingMagicArmor: startingMagicArmor,
      startingDamageMin: startingDamageMin,
      startingDamageMax: startingDamageMax,
      attackRate: attackRate,
      attackAnimationPoint: attackAnimationPoint,
      attackAcquisitionRange: attackAcquisitionRange,
      attackRange: attackRange,
      primaryAttribute: primaryAttribute,
      heroPrimaryAttribute: heroPrimaryAttribute,
      strengthBase: strengthBase,
      strengthGain: strengthGain,
      intelligenceBase: intelligenceBase,
      intelligenceGain: intelligenceGain,
      agilityBase: agilityBase,
      agilityGain: agilityGain,
      hpRegen: hpRegen,
      mpRegen: mpRegen,
      moveSpeed: moveSpeed,
      moveTurnRate: moveTurnRate,
      hpBarOffset: hpBarOffset,
      visionDaytimeRange: visionDaytimeRange,
      visionNighttimeRange: visionNighttimeRange,
      complexity: complexity,
    );
  }

  Stat fromJson(Map<String, Object> json) {
    return Stat.fromJson(json);
  }
}

/// @nodoc
const $Stat = _$StatTearOff();

/// @nodoc
mixin _$Stat {
  int get gameVersionId => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  int get heroUnlockOrder => throw _privateConstructorUsedError;
  bool get team => throw _privateConstructorUsedError;
  bool get cmEnabled => throw _privateConstructorUsedError;
  bool get newPlayerEnabled => throw _privateConstructorUsedError;
  AttackType get attackType => throw _privateConstructorUsedError;
  double get startingArmor => throw _privateConstructorUsedError;
  int get startingMagicArmor => throw _privateConstructorUsedError;
  int get startingDamageMin => throw _privateConstructorUsedError;
  int get startingDamageMax => throw _privateConstructorUsedError;
  double get attackRate => throw _privateConstructorUsedError;
  double get attackAnimationPoint => throw _privateConstructorUsedError;
  int get attackAcquisitionRange => throw _privateConstructorUsedError;
  int get attackRange => throw _privateConstructorUsedError;
  PrimaryAttribute get primaryAttribute => throw _privateConstructorUsedError;
  int get heroPrimaryAttribute => throw _privateConstructorUsedError;
  int get strengthBase => throw _privateConstructorUsedError;
  double get strengthGain => throw _privateConstructorUsedError;
  int get intelligenceBase => throw _privateConstructorUsedError;
  double get intelligenceGain => throw _privateConstructorUsedError;
  int get agilityBase => throw _privateConstructorUsedError;
  double get agilityGain => throw _privateConstructorUsedError;
  double get hpRegen => throw _privateConstructorUsedError;
  double get mpRegen => throw _privateConstructorUsedError;
  int get moveSpeed => throw _privateConstructorUsedError;
  double get moveTurnRate => throw _privateConstructorUsedError;
  int get hpBarOffset => throw _privateConstructorUsedError;
  int get visionDaytimeRange => throw _privateConstructorUsedError;
  int get visionNighttimeRange => throw _privateConstructorUsedError;
  int get complexity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res>;
  $Res call(
      {int gameVersionId,
      bool enabled,
      int heroUnlockOrder,
      bool team,
      bool cmEnabled,
      bool newPlayerEnabled,
      AttackType attackType,
      double startingArmor,
      int startingMagicArmor,
      int startingDamageMin,
      int startingDamageMax,
      double attackRate,
      double attackAnimationPoint,
      int attackAcquisitionRange,
      int attackRange,
      PrimaryAttribute primaryAttribute,
      int heroPrimaryAttribute,
      int strengthBase,
      double strengthGain,
      int intelligenceBase,
      double intelligenceGain,
      int agilityBase,
      double agilityGain,
      double hpRegen,
      double mpRegen,
      int moveSpeed,
      double moveTurnRate,
      int hpBarOffset,
      int visionDaytimeRange,
      int visionNighttimeRange,
      int complexity});
}

/// @nodoc
class _$StatCopyWithImpl<$Res> implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  final Stat _value;
  // ignore: unused_field
  final $Res Function(Stat) _then;

  @override
  $Res call({
    Object? gameVersionId = freezed,
    Object? enabled = freezed,
    Object? heroUnlockOrder = freezed,
    Object? team = freezed,
    Object? cmEnabled = freezed,
    Object? newPlayerEnabled = freezed,
    Object? attackType = freezed,
    Object? startingArmor = freezed,
    Object? startingMagicArmor = freezed,
    Object? startingDamageMin = freezed,
    Object? startingDamageMax = freezed,
    Object? attackRate = freezed,
    Object? attackAnimationPoint = freezed,
    Object? attackAcquisitionRange = freezed,
    Object? attackRange = freezed,
    Object? primaryAttribute = freezed,
    Object? heroPrimaryAttribute = freezed,
    Object? strengthBase = freezed,
    Object? strengthGain = freezed,
    Object? intelligenceBase = freezed,
    Object? intelligenceGain = freezed,
    Object? agilityBase = freezed,
    Object? agilityGain = freezed,
    Object? hpRegen = freezed,
    Object? mpRegen = freezed,
    Object? moveSpeed = freezed,
    Object? moveTurnRate = freezed,
    Object? hpBarOffset = freezed,
    Object? visionDaytimeRange = freezed,
    Object? visionNighttimeRange = freezed,
    Object? complexity = freezed,
  }) {
    return _then(_value.copyWith(
      gameVersionId: gameVersionId == freezed
          ? _value.gameVersionId
          : gameVersionId // ignore: cast_nullable_to_non_nullable
              as int,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      heroUnlockOrder: heroUnlockOrder == freezed
          ? _value.heroUnlockOrder
          : heroUnlockOrder // ignore: cast_nullable_to_non_nullable
              as int,
      team: team == freezed
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as bool,
      cmEnabled: cmEnabled == freezed
          ? _value.cmEnabled
          : cmEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      newPlayerEnabled: newPlayerEnabled == freezed
          ? _value.newPlayerEnabled
          : newPlayerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      attackType: attackType == freezed
          ? _value.attackType
          : attackType // ignore: cast_nullable_to_non_nullable
              as AttackType,
      startingArmor: startingArmor == freezed
          ? _value.startingArmor
          : startingArmor // ignore: cast_nullable_to_non_nullable
              as double,
      startingMagicArmor: startingMagicArmor == freezed
          ? _value.startingMagicArmor
          : startingMagicArmor // ignore: cast_nullable_to_non_nullable
              as int,
      startingDamageMin: startingDamageMin == freezed
          ? _value.startingDamageMin
          : startingDamageMin // ignore: cast_nullable_to_non_nullable
              as int,
      startingDamageMax: startingDamageMax == freezed
          ? _value.startingDamageMax
          : startingDamageMax // ignore: cast_nullable_to_non_nullable
              as int,
      attackRate: attackRate == freezed
          ? _value.attackRate
          : attackRate // ignore: cast_nullable_to_non_nullable
              as double,
      attackAnimationPoint: attackAnimationPoint == freezed
          ? _value.attackAnimationPoint
          : attackAnimationPoint // ignore: cast_nullable_to_non_nullable
              as double,
      attackAcquisitionRange: attackAcquisitionRange == freezed
          ? _value.attackAcquisitionRange
          : attackAcquisitionRange // ignore: cast_nullable_to_non_nullable
              as int,
      attackRange: attackRange == freezed
          ? _value.attackRange
          : attackRange // ignore: cast_nullable_to_non_nullable
              as int,
      primaryAttribute: primaryAttribute == freezed
          ? _value.primaryAttribute
          : primaryAttribute // ignore: cast_nullable_to_non_nullable
              as PrimaryAttribute,
      heroPrimaryAttribute: heroPrimaryAttribute == freezed
          ? _value.heroPrimaryAttribute
          : heroPrimaryAttribute // ignore: cast_nullable_to_non_nullable
              as int,
      strengthBase: strengthBase == freezed
          ? _value.strengthBase
          : strengthBase // ignore: cast_nullable_to_non_nullable
              as int,
      strengthGain: strengthGain == freezed
          ? _value.strengthGain
          : strengthGain // ignore: cast_nullable_to_non_nullable
              as double,
      intelligenceBase: intelligenceBase == freezed
          ? _value.intelligenceBase
          : intelligenceBase // ignore: cast_nullable_to_non_nullable
              as int,
      intelligenceGain: intelligenceGain == freezed
          ? _value.intelligenceGain
          : intelligenceGain // ignore: cast_nullable_to_non_nullable
              as double,
      agilityBase: agilityBase == freezed
          ? _value.agilityBase
          : agilityBase // ignore: cast_nullable_to_non_nullable
              as int,
      agilityGain: agilityGain == freezed
          ? _value.agilityGain
          : agilityGain // ignore: cast_nullable_to_non_nullable
              as double,
      hpRegen: hpRegen == freezed
          ? _value.hpRegen
          : hpRegen // ignore: cast_nullable_to_non_nullable
              as double,
      mpRegen: mpRegen == freezed
          ? _value.mpRegen
          : mpRegen // ignore: cast_nullable_to_non_nullable
              as double,
      moveSpeed: moveSpeed == freezed
          ? _value.moveSpeed
          : moveSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      moveTurnRate: moveTurnRate == freezed
          ? _value.moveTurnRate
          : moveTurnRate // ignore: cast_nullable_to_non_nullable
              as double,
      hpBarOffset: hpBarOffset == freezed
          ? _value.hpBarOffset
          : hpBarOffset // ignore: cast_nullable_to_non_nullable
              as int,
      visionDaytimeRange: visionDaytimeRange == freezed
          ? _value.visionDaytimeRange
          : visionDaytimeRange // ignore: cast_nullable_to_non_nullable
              as int,
      visionNighttimeRange: visionNighttimeRange == freezed
          ? _value.visionNighttimeRange
          : visionNighttimeRange // ignore: cast_nullable_to_non_nullable
              as int,
      complexity: complexity == freezed
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StatCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$StatCopyWith(_Stat value, $Res Function(_Stat) then) =
      __$StatCopyWithImpl<$Res>;
  @override
  $Res call(
      {int gameVersionId,
      bool enabled,
      int heroUnlockOrder,
      bool team,
      bool cmEnabled,
      bool newPlayerEnabled,
      AttackType attackType,
      double startingArmor,
      int startingMagicArmor,
      int startingDamageMin,
      int startingDamageMax,
      double attackRate,
      double attackAnimationPoint,
      int attackAcquisitionRange,
      int attackRange,
      PrimaryAttribute primaryAttribute,
      int heroPrimaryAttribute,
      int strengthBase,
      double strengthGain,
      int intelligenceBase,
      double intelligenceGain,
      int agilityBase,
      double agilityGain,
      double hpRegen,
      double mpRegen,
      int moveSpeed,
      double moveTurnRate,
      int hpBarOffset,
      int visionDaytimeRange,
      int visionNighttimeRange,
      int complexity});
}

/// @nodoc
class __$StatCopyWithImpl<$Res> extends _$StatCopyWithImpl<$Res>
    implements _$StatCopyWith<$Res> {
  __$StatCopyWithImpl(_Stat _value, $Res Function(_Stat) _then)
      : super(_value, (v) => _then(v as _Stat));

  @override
  _Stat get _value => super._value as _Stat;

  @override
  $Res call({
    Object? gameVersionId = freezed,
    Object? enabled = freezed,
    Object? heroUnlockOrder = freezed,
    Object? team = freezed,
    Object? cmEnabled = freezed,
    Object? newPlayerEnabled = freezed,
    Object? attackType = freezed,
    Object? startingArmor = freezed,
    Object? startingMagicArmor = freezed,
    Object? startingDamageMin = freezed,
    Object? startingDamageMax = freezed,
    Object? attackRate = freezed,
    Object? attackAnimationPoint = freezed,
    Object? attackAcquisitionRange = freezed,
    Object? attackRange = freezed,
    Object? primaryAttribute = freezed,
    Object? heroPrimaryAttribute = freezed,
    Object? strengthBase = freezed,
    Object? strengthGain = freezed,
    Object? intelligenceBase = freezed,
    Object? intelligenceGain = freezed,
    Object? agilityBase = freezed,
    Object? agilityGain = freezed,
    Object? hpRegen = freezed,
    Object? mpRegen = freezed,
    Object? moveSpeed = freezed,
    Object? moveTurnRate = freezed,
    Object? hpBarOffset = freezed,
    Object? visionDaytimeRange = freezed,
    Object? visionNighttimeRange = freezed,
    Object? complexity = freezed,
  }) {
    return _then(_Stat(
      gameVersionId: gameVersionId == freezed
          ? _value.gameVersionId
          : gameVersionId // ignore: cast_nullable_to_non_nullable
              as int,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      heroUnlockOrder: heroUnlockOrder == freezed
          ? _value.heroUnlockOrder
          : heroUnlockOrder // ignore: cast_nullable_to_non_nullable
              as int,
      team: team == freezed
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as bool,
      cmEnabled: cmEnabled == freezed
          ? _value.cmEnabled
          : cmEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      newPlayerEnabled: newPlayerEnabled == freezed
          ? _value.newPlayerEnabled
          : newPlayerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      attackType: attackType == freezed
          ? _value.attackType
          : attackType // ignore: cast_nullable_to_non_nullable
              as AttackType,
      startingArmor: startingArmor == freezed
          ? _value.startingArmor
          : startingArmor // ignore: cast_nullable_to_non_nullable
              as double,
      startingMagicArmor: startingMagicArmor == freezed
          ? _value.startingMagicArmor
          : startingMagicArmor // ignore: cast_nullable_to_non_nullable
              as int,
      startingDamageMin: startingDamageMin == freezed
          ? _value.startingDamageMin
          : startingDamageMin // ignore: cast_nullable_to_non_nullable
              as int,
      startingDamageMax: startingDamageMax == freezed
          ? _value.startingDamageMax
          : startingDamageMax // ignore: cast_nullable_to_non_nullable
              as int,
      attackRate: attackRate == freezed
          ? _value.attackRate
          : attackRate // ignore: cast_nullable_to_non_nullable
              as double,
      attackAnimationPoint: attackAnimationPoint == freezed
          ? _value.attackAnimationPoint
          : attackAnimationPoint // ignore: cast_nullable_to_non_nullable
              as double,
      attackAcquisitionRange: attackAcquisitionRange == freezed
          ? _value.attackAcquisitionRange
          : attackAcquisitionRange // ignore: cast_nullable_to_non_nullable
              as int,
      attackRange: attackRange == freezed
          ? _value.attackRange
          : attackRange // ignore: cast_nullable_to_non_nullable
              as int,
      primaryAttribute: primaryAttribute == freezed
          ? _value.primaryAttribute
          : primaryAttribute // ignore: cast_nullable_to_non_nullable
              as PrimaryAttribute,
      heroPrimaryAttribute: heroPrimaryAttribute == freezed
          ? _value.heroPrimaryAttribute
          : heroPrimaryAttribute // ignore: cast_nullable_to_non_nullable
              as int,
      strengthBase: strengthBase == freezed
          ? _value.strengthBase
          : strengthBase // ignore: cast_nullable_to_non_nullable
              as int,
      strengthGain: strengthGain == freezed
          ? _value.strengthGain
          : strengthGain // ignore: cast_nullable_to_non_nullable
              as double,
      intelligenceBase: intelligenceBase == freezed
          ? _value.intelligenceBase
          : intelligenceBase // ignore: cast_nullable_to_non_nullable
              as int,
      intelligenceGain: intelligenceGain == freezed
          ? _value.intelligenceGain
          : intelligenceGain // ignore: cast_nullable_to_non_nullable
              as double,
      agilityBase: agilityBase == freezed
          ? _value.agilityBase
          : agilityBase // ignore: cast_nullable_to_non_nullable
              as int,
      agilityGain: agilityGain == freezed
          ? _value.agilityGain
          : agilityGain // ignore: cast_nullable_to_non_nullable
              as double,
      hpRegen: hpRegen == freezed
          ? _value.hpRegen
          : hpRegen // ignore: cast_nullable_to_non_nullable
              as double,
      mpRegen: mpRegen == freezed
          ? _value.mpRegen
          : mpRegen // ignore: cast_nullable_to_non_nullable
              as double,
      moveSpeed: moveSpeed == freezed
          ? _value.moveSpeed
          : moveSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      moveTurnRate: moveTurnRate == freezed
          ? _value.moveTurnRate
          : moveTurnRate // ignore: cast_nullable_to_non_nullable
              as double,
      hpBarOffset: hpBarOffset == freezed
          ? _value.hpBarOffset
          : hpBarOffset // ignore: cast_nullable_to_non_nullable
              as int,
      visionDaytimeRange: visionDaytimeRange == freezed
          ? _value.visionDaytimeRange
          : visionDaytimeRange // ignore: cast_nullable_to_non_nullable
              as int,
      visionNighttimeRange: visionNighttimeRange == freezed
          ? _value.visionNighttimeRange
          : visionNighttimeRange // ignore: cast_nullable_to_non_nullable
              as int,
      complexity: complexity == freezed
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stat with DiagnosticableTreeMixin implements _Stat {
  const _$_Stat(
      {required this.gameVersionId,
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
      required this.complexity});

  factory _$_Stat.fromJson(Map<String, dynamic> json) =>
      _$_$_StatFromJson(json);

  @override
  final int gameVersionId;
  @override
  final bool enabled;
  @override
  final int heroUnlockOrder;
  @override
  final bool team;
  @override
  final bool cmEnabled;
  @override
  final bool newPlayerEnabled;
  @override
  final AttackType attackType;
  @override
  final double startingArmor;
  @override
  final int startingMagicArmor;
  @override
  final int startingDamageMin;
  @override
  final int startingDamageMax;
  @override
  final double attackRate;
  @override
  final double attackAnimationPoint;
  @override
  final int attackAcquisitionRange;
  @override
  final int attackRange;
  @override
  final PrimaryAttribute primaryAttribute;
  @override
  final int heroPrimaryAttribute;
  @override
  final int strengthBase;
  @override
  final double strengthGain;
  @override
  final int intelligenceBase;
  @override
  final double intelligenceGain;
  @override
  final int agilityBase;
  @override
  final double agilityGain;
  @override
  final double hpRegen;
  @override
  final double mpRegen;
  @override
  final int moveSpeed;
  @override
  final double moveTurnRate;
  @override
  final int hpBarOffset;
  @override
  final int visionDaytimeRange;
  @override
  final int visionNighttimeRange;
  @override
  final int complexity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Stat(gameVersionId: $gameVersionId, enabled: $enabled, heroUnlockOrder: $heroUnlockOrder, team: $team, cmEnabled: $cmEnabled, newPlayerEnabled: $newPlayerEnabled, attackType: $attackType, startingArmor: $startingArmor, startingMagicArmor: $startingMagicArmor, startingDamageMin: $startingDamageMin, startingDamageMax: $startingDamageMax, attackRate: $attackRate, attackAnimationPoint: $attackAnimationPoint, attackAcquisitionRange: $attackAcquisitionRange, attackRange: $attackRange, primaryAttribute: $primaryAttribute, heroPrimaryAttribute: $heroPrimaryAttribute, strengthBase: $strengthBase, strengthGain: $strengthGain, intelligenceBase: $intelligenceBase, intelligenceGain: $intelligenceGain, agilityBase: $agilityBase, agilityGain: $agilityGain, hpRegen: $hpRegen, mpRegen: $mpRegen, moveSpeed: $moveSpeed, moveTurnRate: $moveTurnRate, hpBarOffset: $hpBarOffset, visionDaytimeRange: $visionDaytimeRange, visionNighttimeRange: $visionNighttimeRange, complexity: $complexity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Stat'))
      ..add(DiagnosticsProperty('gameVersionId', gameVersionId))
      ..add(DiagnosticsProperty('enabled', enabled))
      ..add(DiagnosticsProperty('heroUnlockOrder', heroUnlockOrder))
      ..add(DiagnosticsProperty('team', team))
      ..add(DiagnosticsProperty('cmEnabled', cmEnabled))
      ..add(DiagnosticsProperty('newPlayerEnabled', newPlayerEnabled))
      ..add(DiagnosticsProperty('attackType', attackType))
      ..add(DiagnosticsProperty('startingArmor', startingArmor))
      ..add(DiagnosticsProperty('startingMagicArmor', startingMagicArmor))
      ..add(DiagnosticsProperty('startingDamageMin', startingDamageMin))
      ..add(DiagnosticsProperty('startingDamageMax', startingDamageMax))
      ..add(DiagnosticsProperty('attackRate', attackRate))
      ..add(DiagnosticsProperty('attackAnimationPoint', attackAnimationPoint))
      ..add(
          DiagnosticsProperty('attackAcquisitionRange', attackAcquisitionRange))
      ..add(DiagnosticsProperty('attackRange', attackRange))
      ..add(DiagnosticsProperty('primaryAttribute', primaryAttribute))
      ..add(DiagnosticsProperty('heroPrimaryAttribute', heroPrimaryAttribute))
      ..add(DiagnosticsProperty('strengthBase', strengthBase))
      ..add(DiagnosticsProperty('strengthGain', strengthGain))
      ..add(DiagnosticsProperty('intelligenceBase', intelligenceBase))
      ..add(DiagnosticsProperty('intelligenceGain', intelligenceGain))
      ..add(DiagnosticsProperty('agilityBase', agilityBase))
      ..add(DiagnosticsProperty('agilityGain', agilityGain))
      ..add(DiagnosticsProperty('hpRegen', hpRegen))
      ..add(DiagnosticsProperty('mpRegen', mpRegen))
      ..add(DiagnosticsProperty('moveSpeed', moveSpeed))
      ..add(DiagnosticsProperty('moveTurnRate', moveTurnRate))
      ..add(DiagnosticsProperty('hpBarOffset', hpBarOffset))
      ..add(DiagnosticsProperty('visionDaytimeRange', visionDaytimeRange))
      ..add(DiagnosticsProperty('visionNighttimeRange', visionNighttimeRange))
      ..add(DiagnosticsProperty('complexity', complexity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stat &&
            (identical(other.gameVersionId, gameVersionId) ||
                const DeepCollectionEquality()
                    .equals(other.gameVersionId, gameVersionId)) &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.heroUnlockOrder, heroUnlockOrder) ||
                const DeepCollectionEquality()
                    .equals(other.heroUnlockOrder, heroUnlockOrder)) &&
            (identical(other.team, team) ||
                const DeepCollectionEquality().equals(other.team, team)) &&
            (identical(other.cmEnabled, cmEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.cmEnabled, cmEnabled)) &&
            (identical(other.newPlayerEnabled, newPlayerEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.newPlayerEnabled, newPlayerEnabled)) &&
            (identical(other.attackType, attackType) ||
                const DeepCollectionEquality()
                    .equals(other.attackType, attackType)) &&
            (identical(other.startingArmor, startingArmor) ||
                const DeepCollectionEquality()
                    .equals(other.startingArmor, startingArmor)) &&
            (identical(other.startingMagicArmor, startingMagicArmor) ||
                const DeepCollectionEquality()
                    .equals(other.startingMagicArmor, startingMagicArmor)) &&
            (identical(other.startingDamageMin, startingDamageMin) ||
                const DeepCollectionEquality()
                    .equals(other.startingDamageMin, startingDamageMin)) &&
            (identical(other.startingDamageMax, startingDamageMax) ||
                const DeepCollectionEquality()
                    .equals(other.startingDamageMax, startingDamageMax)) &&
            (identical(other.attackRate, attackRate) ||
                const DeepCollectionEquality()
                    .equals(other.attackRate, attackRate)) &&
            (identical(other.attackAnimationPoint, attackAnimationPoint) ||
                const DeepCollectionEquality().equals(
                    other.attackAnimationPoint, attackAnimationPoint)) &&
            (identical(other.attackAcquisitionRange, attackAcquisitionRange) ||
                const DeepCollectionEquality().equals(
                    other.attackAcquisitionRange, attackAcquisitionRange)) &&
            (identical(other.attackRange, attackRange) ||
                const DeepCollectionEquality()
                    .equals(other.attackRange, attackRange)) &&
            (identical(other.primaryAttribute, primaryAttribute) ||
                const DeepCollectionEquality()
                    .equals(other.primaryAttribute, primaryAttribute)) &&
            (identical(other.heroPrimaryAttribute, heroPrimaryAttribute) ||
                const DeepCollectionEquality().equals(
                    other.heroPrimaryAttribute, heroPrimaryAttribute)) &&
            (identical(other.strengthBase, strengthBase) ||
                const DeepCollectionEquality()
                    .equals(other.strengthBase, strengthBase)) &&
            (identical(other.strengthGain, strengthGain) ||
                const DeepCollectionEquality()
                    .equals(other.strengthGain, strengthGain)) &&
            (identical(other.intelligenceBase, intelligenceBase) ||
                const DeepCollectionEquality()
                    .equals(other.intelligenceBase, intelligenceBase)) &&
            (identical(other.intelligenceGain, intelligenceGain) ||
                const DeepCollectionEquality()
                    .equals(other.intelligenceGain, intelligenceGain)) &&
            (identical(other.agilityBase, agilityBase) ||
                const DeepCollectionEquality().equals(other.agilityBase, agilityBase)) &&
            (identical(other.agilityGain, agilityGain) || const DeepCollectionEquality().equals(other.agilityGain, agilityGain)) &&
            (identical(other.hpRegen, hpRegen) || const DeepCollectionEquality().equals(other.hpRegen, hpRegen)) &&
            (identical(other.mpRegen, mpRegen) || const DeepCollectionEquality().equals(other.mpRegen, mpRegen)) &&
            (identical(other.moveSpeed, moveSpeed) || const DeepCollectionEquality().equals(other.moveSpeed, moveSpeed)) &&
            (identical(other.moveTurnRate, moveTurnRate) || const DeepCollectionEquality().equals(other.moveTurnRate, moveTurnRate)) &&
            (identical(other.hpBarOffset, hpBarOffset) || const DeepCollectionEquality().equals(other.hpBarOffset, hpBarOffset)) &&
            (identical(other.visionDaytimeRange, visionDaytimeRange) || const DeepCollectionEquality().equals(other.visionDaytimeRange, visionDaytimeRange)) &&
            (identical(other.visionNighttimeRange, visionNighttimeRange) || const DeepCollectionEquality().equals(other.visionNighttimeRange, visionNighttimeRange)) &&
            (identical(other.complexity, complexity) || const DeepCollectionEquality().equals(other.complexity, complexity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameVersionId) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(heroUnlockOrder) ^
      const DeepCollectionEquality().hash(team) ^
      const DeepCollectionEquality().hash(cmEnabled) ^
      const DeepCollectionEquality().hash(newPlayerEnabled) ^
      const DeepCollectionEquality().hash(attackType) ^
      const DeepCollectionEquality().hash(startingArmor) ^
      const DeepCollectionEquality().hash(startingMagicArmor) ^
      const DeepCollectionEquality().hash(startingDamageMin) ^
      const DeepCollectionEquality().hash(startingDamageMax) ^
      const DeepCollectionEquality().hash(attackRate) ^
      const DeepCollectionEquality().hash(attackAnimationPoint) ^
      const DeepCollectionEquality().hash(attackAcquisitionRange) ^
      const DeepCollectionEquality().hash(attackRange) ^
      const DeepCollectionEquality().hash(primaryAttribute) ^
      const DeepCollectionEquality().hash(heroPrimaryAttribute) ^
      const DeepCollectionEquality().hash(strengthBase) ^
      const DeepCollectionEquality().hash(strengthGain) ^
      const DeepCollectionEquality().hash(intelligenceBase) ^
      const DeepCollectionEquality().hash(intelligenceGain) ^
      const DeepCollectionEquality().hash(agilityBase) ^
      const DeepCollectionEquality().hash(agilityGain) ^
      const DeepCollectionEquality().hash(hpRegen) ^
      const DeepCollectionEquality().hash(mpRegen) ^
      const DeepCollectionEquality().hash(moveSpeed) ^
      const DeepCollectionEquality().hash(moveTurnRate) ^
      const DeepCollectionEquality().hash(hpBarOffset) ^
      const DeepCollectionEquality().hash(visionDaytimeRange) ^
      const DeepCollectionEquality().hash(visionNighttimeRange) ^
      const DeepCollectionEquality().hash(complexity);

  @JsonKey(ignore: true)
  @override
  _$StatCopyWith<_Stat> get copyWith =>
      __$StatCopyWithImpl<_Stat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatToJson(this);
  }
}

abstract class _Stat implements Stat {
  const factory _Stat(
      {required int gameVersionId,
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
      required int complexity}) = _$_Stat;

  factory _Stat.fromJson(Map<String, dynamic> json) = _$_Stat.fromJson;

  @override
  int get gameVersionId => throw _privateConstructorUsedError;
  @override
  bool get enabled => throw _privateConstructorUsedError;
  @override
  int get heroUnlockOrder => throw _privateConstructorUsedError;
  @override
  bool get team => throw _privateConstructorUsedError;
  @override
  bool get cmEnabled => throw _privateConstructorUsedError;
  @override
  bool get newPlayerEnabled => throw _privateConstructorUsedError;
  @override
  AttackType get attackType => throw _privateConstructorUsedError;
  @override
  double get startingArmor => throw _privateConstructorUsedError;
  @override
  int get startingMagicArmor => throw _privateConstructorUsedError;
  @override
  int get startingDamageMin => throw _privateConstructorUsedError;
  @override
  int get startingDamageMax => throw _privateConstructorUsedError;
  @override
  double get attackRate => throw _privateConstructorUsedError;
  @override
  double get attackAnimationPoint => throw _privateConstructorUsedError;
  @override
  int get attackAcquisitionRange => throw _privateConstructorUsedError;
  @override
  int get attackRange => throw _privateConstructorUsedError;
  @override
  PrimaryAttribute get primaryAttribute => throw _privateConstructorUsedError;
  @override
  int get heroPrimaryAttribute => throw _privateConstructorUsedError;
  @override
  int get strengthBase => throw _privateConstructorUsedError;
  @override
  double get strengthGain => throw _privateConstructorUsedError;
  @override
  int get intelligenceBase => throw _privateConstructorUsedError;
  @override
  double get intelligenceGain => throw _privateConstructorUsedError;
  @override
  int get agilityBase => throw _privateConstructorUsedError;
  @override
  double get agilityGain => throw _privateConstructorUsedError;
  @override
  double get hpRegen => throw _privateConstructorUsedError;
  @override
  double get mpRegen => throw _privateConstructorUsedError;
  @override
  int get moveSpeed => throw _privateConstructorUsedError;
  @override
  double get moveTurnRate => throw _privateConstructorUsedError;
  @override
  int get hpBarOffset => throw _privateConstructorUsedError;
  @override
  int get visionDaytimeRange => throw _privateConstructorUsedError;
  @override
  int get visionNighttimeRange => throw _privateConstructorUsedError;
  @override
  int get complexity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatCopyWith<_Stat> get copyWith => throw _privateConstructorUsedError;
}

Talent _$TalentFromJson(Map<String, dynamic> json) {
  return _Talent.fromJson(json);
}

/// @nodoc
class _$TalentTearOff {
  const _$TalentTearOff();

  _Talent call(
      {required int slot, required int gameVersionId, required int abilityId}) {
    return _Talent(
      slot: slot,
      gameVersionId: gameVersionId,
      abilityId: abilityId,
    );
  }

  Talent fromJson(Map<String, Object> json) {
    return Talent.fromJson(json);
  }
}

/// @nodoc
const $Talent = _$TalentTearOff();

/// @nodoc
mixin _$Talent {
  int get slot => throw _privateConstructorUsedError;
  int get gameVersionId => throw _privateConstructorUsedError;
  int get abilityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TalentCopyWith<Talent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalentCopyWith<$Res> {
  factory $TalentCopyWith(Talent value, $Res Function(Talent) then) =
      _$TalentCopyWithImpl<$Res>;
  $Res call({int slot, int gameVersionId, int abilityId});
}

/// @nodoc
class _$TalentCopyWithImpl<$Res> implements $TalentCopyWith<$Res> {
  _$TalentCopyWithImpl(this._value, this._then);

  final Talent _value;
  // ignore: unused_field
  final $Res Function(Talent) _then;

  @override
  $Res call({
    Object? slot = freezed,
    Object? gameVersionId = freezed,
    Object? abilityId = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      gameVersionId: gameVersionId == freezed
          ? _value.gameVersionId
          : gameVersionId // ignore: cast_nullable_to_non_nullable
              as int,
      abilityId: abilityId == freezed
          ? _value.abilityId
          : abilityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TalentCopyWith<$Res> implements $TalentCopyWith<$Res> {
  factory _$TalentCopyWith(_Talent value, $Res Function(_Talent) then) =
      __$TalentCopyWithImpl<$Res>;
  @override
  $Res call({int slot, int gameVersionId, int abilityId});
}

/// @nodoc
class __$TalentCopyWithImpl<$Res> extends _$TalentCopyWithImpl<$Res>
    implements _$TalentCopyWith<$Res> {
  __$TalentCopyWithImpl(_Talent _value, $Res Function(_Talent) _then)
      : super(_value, (v) => _then(v as _Talent));

  @override
  _Talent get _value => super._value as _Talent;

  @override
  $Res call({
    Object? slot = freezed,
    Object? gameVersionId = freezed,
    Object? abilityId = freezed,
  }) {
    return _then(_Talent(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      gameVersionId: gameVersionId == freezed
          ? _value.gameVersionId
          : gameVersionId // ignore: cast_nullable_to_non_nullable
              as int,
      abilityId: abilityId == freezed
          ? _value.abilityId
          : abilityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Talent with DiagnosticableTreeMixin implements _Talent {
  const _$_Talent(
      {required this.slot,
      required this.gameVersionId,
      required this.abilityId});

  factory _$_Talent.fromJson(Map<String, dynamic> json) =>
      _$_$_TalentFromJson(json);

  @override
  final int slot;
  @override
  final int gameVersionId;
  @override
  final int abilityId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Talent(slot: $slot, gameVersionId: $gameVersionId, abilityId: $abilityId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Talent'))
      ..add(DiagnosticsProperty('slot', slot))
      ..add(DiagnosticsProperty('gameVersionId', gameVersionId))
      ..add(DiagnosticsProperty('abilityId', abilityId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Talent &&
            (identical(other.slot, slot) ||
                const DeepCollectionEquality().equals(other.slot, slot)) &&
            (identical(other.gameVersionId, gameVersionId) ||
                const DeepCollectionEquality()
                    .equals(other.gameVersionId, gameVersionId)) &&
            (identical(other.abilityId, abilityId) ||
                const DeepCollectionEquality()
                    .equals(other.abilityId, abilityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slot) ^
      const DeepCollectionEquality().hash(gameVersionId) ^
      const DeepCollectionEquality().hash(abilityId);

  @JsonKey(ignore: true)
  @override
  _$TalentCopyWith<_Talent> get copyWith =>
      __$TalentCopyWithImpl<_Talent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TalentToJson(this);
  }
}

abstract class _Talent implements Talent {
  const factory _Talent(
      {required int slot,
      required int gameVersionId,
      required int abilityId}) = _$_Talent;

  factory _Talent.fromJson(Map<String, dynamic> json) = _$_Talent.fromJson;

  @override
  int get slot => throw _privateConstructorUsedError;
  @override
  int get gameVersionId => throw _privateConstructorUsedError;
  @override
  int get abilityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TalentCopyWith<_Talent> get copyWith => throw _privateConstructorUsedError;
}
