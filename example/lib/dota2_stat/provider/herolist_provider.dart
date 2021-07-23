import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratz_api/stratz_api.dart';

class HeroListNotifier extends StateNotifier<AsyncValue<List<Dota2Hero>>> {
  HeroListNotifier() : super(const AsyncValue.loading()) {
    _fetchHeroList();
  }

  Future<void> _fetchHeroList() async {
    state = await AsyncValue.guard(() => StratzApiClient().getAllDota2Heroes());
  }

  Future<void> getHero1() async {
    state = await AsyncValue.guard(() =>
        StratzApiClient().getDota2Hero(2).then((value) => <Dota2Hero>[value]));
  }
}

final heroListProvider =
    StateNotifierProvider<HeroListNotifier, AsyncValue<List<Dota2Hero>>>(
  (_) => HeroListNotifier(),
);
