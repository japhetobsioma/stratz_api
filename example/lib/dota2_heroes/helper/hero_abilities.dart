import 'package:stratz_api/stratz_api.dart';

String getHeroAbilities(
  List<Dota2Hero> dota2Heroes,
  List<Dota2Ability> dota2Abilities,
  int index,
) {
  final currentHero = dota2Heroes[index];
  final currentHeroAbilities = currentHero.abilities;
  var heroAbilitiesList = <String>[];

  for (var heroAbility in currentHeroAbilities) {
    final ability = dota2Abilities.firstWhere(
        (dota2Ability) => dota2Ability.id == heroAbility!.abilityId);
    if (ability.language?.displayName != '') {
      heroAbilitiesList.add(ability.language!.displayName!);
    }
  }

  return '${heroAbilitiesList.join(', ')}.';
}
