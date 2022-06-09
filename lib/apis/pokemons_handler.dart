import 'package:dio/dio.dart';
import 'package:ffuf_20220608_pokeke/models/pokemon/pokemon.dart';

class PokemonsHandler {
  final _pokemonsUrl = 'https://pokeapi.co/api/v2/pokemon';
  final _pokemons = List<Pokemon>.empty(growable: true);

  List<Pokemon> get pokemons => _pokemons;

  final Dio dio = Dio();

  Future<void> fetchPokemons() async {
    try {
      final response = await dio.get(_pokemonsUrl);

      if (response.statusCode == 200) {
        final data = response.data['results'];

        for (var pokemon in data) {
          _pokemons.add(Pokemon(
            name: pokemon['name'],
            abilityUrl: pokemon['url'],
          ));
        }
      }
    } on Exception catch (_) {}
  }
}
