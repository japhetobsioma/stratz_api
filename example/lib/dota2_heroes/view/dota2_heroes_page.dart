import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratz_api/stratz_api.dart';

import '../provider/dota2_heroes_provider.dart';

class Dota2HeroPage extends ConsumerWidget {
  const Dota2HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dota 2 Heroes')),
      body: Consumer(
        builder: (_, ref, __) {
          final dota2HeroList = ref.watch(dota2HeroProvider);
          return dota2HeroList.when(
            data: (dota2Heroes) => Dota2HeroList(dota2HeroList: dota2Heroes),
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
    required this.dota2HeroList,
  }) : super(key: key);

  final List<Dota2Hero> dota2HeroList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const Divider(),
      itemCount: dota2HeroList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            title: Text(
              dota2HeroList[index].displayName!,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        );
      },
    );
  }
}
