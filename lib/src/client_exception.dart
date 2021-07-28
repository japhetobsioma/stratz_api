/// Exception thrown when getDota2Hero fails
class Dota2HeroRequestFailure implements Exception {
  @override
  String toString() => 'Dota2HeroRequestFailure';
}

/// Exception thrown when the heroes response is not found
class Dota2HeroNotFoundFailure implements Exception {
  @override
  String toString() => 'Dota2HeroNotFoundFailure';
}

/// Exception thrown when getDota2Ability fails
class Dota2AbilityRequestFailure implements Exception {
  @override
  String toString() => 'Dota2AbilityRequestFailure';
}

/// Exception thrown when the abilities response is not found
class Dota2AbilityNotFoundFailure implements Exception {
  @override
  String toString() => 'Dota2AbilityNotFoundFailure';
}

/// Exception thrown when getDota2Cluster fails
class Dota2ClusterRequestFailure implements Exception {
  @override
  String toString() => 'Dota2ClusterRequestFailure';
}

/// Exception thrown when the cluster response is not found
class Dota2ClusterNotFoundFailure implements Exception {
  @override
  String toString() => 'Dota2ClusterNotFoundFailure';
}

/// Exception thrown when getDota2GameMode fails
class Dota2GameModeRequestFailure implements Exception {
  @override
  String toString() => 'Dota2GameModeRequestFailure';
}

/// Exception thrown when the game mode response is not found
class Dota2GameModeNotFoundFailure implements Exception {
  @override
  String toString() => 'Dota2GameModeNotFoundFailure';
}

/// Exception thrown when getDota2GameVersion fails.
class Dota2GameVersionRequestFailure implements Exception {
  @override
  String toString() => 'Dota2GameVersionRequestFailure';
}

/// Exception thrown when the game version response is not found.
class Dota2GameVersionNotFoundFailure implements Exception {
  @override
  String toString() => 'Dota2GameVersionNotFoundFailure';
}

/// Exception thrown when getDota2HeroRole fails.
class Dota2HeroRoleRequestFailure implements Exception {
  @override
  String toString() => 'Dota2HeroRoleRequestFailure';
}

/// Exception thrown when the game version response is not found.
class Dota2HeroRoleNotFoundFailure implements Exception {
  @override
  String toString() => 'Dota2HeroRoleNotFoundFailure';
}
