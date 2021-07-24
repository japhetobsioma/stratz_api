import 'package:flutter/material.dart';

import '../dota2_heroes/dota2_heroes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Dota 2 Heroes', home: Dota2HeroPage());
  }
}
