import 'package:stratz_api/stratz_api.dart';

class Dota2HeroInfo {
  const Dota2HeroInfo({
    required this.dota2heroes,
    required this.dota2abilities,
  });

  final List<Dota2Hero> dota2heroes;
  final List<Dota2Ability> dota2abilities;

  static Future<Dota2HeroInfo> getDota2HeroInfo() async {
    final stratzApiClient = StratzApiClient();
    final heroes = await stratzApiClient.getDota2Heroes();
    final abilities = await stratzApiClient.getDota2Abilities();

    return Dota2HeroInfo(dota2heroes: heroes, dota2abilities: abilities);
  }
}
