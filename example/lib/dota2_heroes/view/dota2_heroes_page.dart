import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratz_api/stratz_api.dart';

import '../helper/hero_abilities.dart';
import '../provider/dota2_hero_info_provider.dart';

class Dota2HeroPage extends StatelessWidget {
  const Dota2HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dota 2 Heroes')),
      body: Consumer(
        builder: (_, ref, __) {
          final dota2HeroInfo = ref.watch(dota2HeroInfoProvider);
          return dota2HeroInfo.when(
            data: (data) => Dota2HeroList(
              dota2Heroes: data.dota2heroes,
              dota2Abilities: data.dota2abilities,
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, __) => Center(child: Text(error.toString())),
          );
        },
      ),
    );
  }
}

class Dota2HeroList extends StatelessWidget {
  const Dota2HeroList({
    Key? key,
    required this.dota2Heroes,
    required this.dota2Abilities,
  }) : super(key: key);

  final List<Dota2Hero> dota2Heroes;
  final List<Dota2Ability> dota2Abilities;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const Divider(),
      itemCount: dota2Heroes.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            title: Text(
              dota2Heroes[index].displayName!,
              style: const TextStyle(fontSize: 18.0),
            ),
            subtitle: Text(
              'Abilities: '
              '${getHeroAbilities(dota2Heroes, dota2Abilities, index)}',
            ),
          ),
        );
      },
    );
  }
}
