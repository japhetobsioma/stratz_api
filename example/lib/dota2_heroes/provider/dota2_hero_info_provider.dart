import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/dota2_hero_info.dart';

class Dota2HeroInfoNotifier extends StateNotifier<AsyncValue<Dota2HeroInfo>> {
  Dota2HeroInfoNotifier() : super(const AsyncValue.loading()) {
    _fetchDota2HeroInfo();
  }

  Future<void> _fetchDota2HeroInfo() async {
    state = await AsyncValue.guard(Dota2HeroInfo.getDota2HeroInfo);
  }
}

final dota2HeroInfoProvider =
    StateNotifierProvider<Dota2HeroInfoNotifier, AsyncValue<Dota2HeroInfo>>(
  (_) => Dota2HeroInfoNotifier(),
);
