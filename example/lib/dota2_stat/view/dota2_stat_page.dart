import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratz_api/stratz_api.dart';

import '../provider/herolist_provider.dart';

class Dota2StatPage extends ConsumerWidget {
  const Dota2StatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dota 2 Heroes')),
      body: Consumer(
        builder: (_, ref, __) {
          final heroList = ref.watch(heroListProvider);
          return heroList.when(
            data: (value) => Dota2HeroList(heroList: value),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (_, __) => const SizedBox.shrink(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(heroListProvider.notifier).getHero1(),
        child: const Icon(Icons.search),
      ),
    );
  }
}

class Dota2HeroList extends StatelessWidget {
  const Dota2HeroList({Key? key, required this.heroList}) : super(key: key);
  final List<Dota2Hero> heroList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const Divider(),
      itemCount: heroList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            title: Text(
              heroList[index].displayName,
              style: const TextStyle(fontSize: 18.0),
            ),
            leading: () {
              final stratzApiClient = StratzApiClient();
              final primaryAttribute = heroList[index].stat.primaryAttribute;
              switch (primaryAttribute) {
                case PrimaryAttribute.agility:
                  return CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage: NetworkImage(
                      stratzApiClient.getDota2HeroIconUrl(heroList[index]),
                    ),
                  );
                case PrimaryAttribute.intelligence:
                  return CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(
                      stratzApiClient.getDota2HeroIconUrl(heroList[index]),
                    ),
                  );
                case PrimaryAttribute.strength:
                  return CircleAvatar(
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage(
                      stratzApiClient.getDota2HeroIconUrl(heroList[index]),
                    ),
                  );
                default:
                  return const CircleAvatar();
              }
            }(),
          ),
        );
      },
    );
  }
}
