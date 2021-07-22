import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stratz_api/stratz_api.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (details) {
      log(details.exceptionAsString(), stackTrace: details.stack);
    };

    runApp(const MyApp());
  }, (error, stack) => log('$error', stackTrace: stack));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Dota 2 Heroes', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dota 2 Heroes')),
      body: FutureBuilder<List<Dota2Hero>>(
        future: StratzApiClient().getDota2Heroes(),
        builder: (_, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          return snapshot.hasData
              ? Dota2HeroList(dota2Heroes: snapshot.data!)
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class Dota2HeroList extends StatelessWidget {
  const Dota2HeroList({Key? key, required this.dota2Heroes}) : super(key: key);
  final List<Dota2Hero> dota2Heroes;

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
              dota2Heroes[index].displayName,
              style: const TextStyle(fontSize: 18.0),
            ),
            leading: () {
              final stratzApiClient = StratzApiClient();
              final primaryAttribute = dota2Heroes[index].stat.primaryAttribute;
              switch (primaryAttribute) {
                case PrimaryAttribute.agility:
                  return CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage: NetworkImage(
                      stratzApiClient.getDota2HeroIconUrl(dota2Heroes[index]),
                    ),
                  );
                case PrimaryAttribute.intelligence:
                  return CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: NetworkImage(
                      stratzApiClient.getDota2HeroIconUrl(dota2Heroes[index]),
                    ),
                  );
                case PrimaryAttribute.strength:
                  return CircleAvatar(
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage(
                      stratzApiClient.getDota2HeroIconUrl(dota2Heroes[index]),
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
