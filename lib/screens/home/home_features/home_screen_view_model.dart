import 'package:async_redux/async_redux.dart';
import 'package:ffuf_20220608_pokeke/models/pokemon/pokemon.dart';

class HomeScreenViewModel extends Vm {
  HomeScreenViewModel({
    required this.pokemons,
  }) : super(equals: [pokemons]);

  final List<Pokemon> pokemons;
}
