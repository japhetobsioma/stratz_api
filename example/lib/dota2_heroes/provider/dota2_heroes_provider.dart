import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratz_api/stratz_api.dart';

class Dota2HeroNotifier extends StateNotifier<AsyncValue<List<Dota2Hero>>> {
  Dota2HeroNotifier() : super(const AsyncValue.loading()) {
    _fetchDota2Heroes();
  }

  Future<void> _fetchDota2Heroes() async {
    state = await AsyncValue.guard(StratzApiClient().getDota2Heroes);
  }
}

final dota2HeroProvider =
    StateNotifierProvider<Dota2HeroNotifier, AsyncValue<List<Dota2Hero>>>(
  (_) => Dota2HeroNotifier(),
);
