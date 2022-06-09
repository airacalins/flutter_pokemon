import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:ffuf_20220608_pokeke/apis/pokemons_handler.dart';
import 'package:ffuf_20220608_pokeke/state/app_state.dart';

class FetchPokemons extends ReduxAction<AppState> {
  @override
  Future<AppState?> reduce() async {
    try {
      final api = PokemonsHandler();
      await api.fetchPokemons();
      return state.copyWith(pokemons: api.pokemons);
    } on Exception catch (e) {
      print(e);
    }
    return state;
  }
}
