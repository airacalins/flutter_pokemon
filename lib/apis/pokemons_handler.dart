import 'package:dio/dio.dart';

class PokemonsHandler {
  final pokemonsUrl = 'https://pokeapi.co/api/v2/pokemon?limit=1126';
  final Dio dio = Dio();

  Future<List<String>> fetchPokemons() async {
    final pokemons = List<String>.empty(growable: true);

    try {
      final response = await dio.get(pokemonsUrl);

      if (response.statusCode == 200) {
        final data = response.data['results'];

        print(data);

        for (var item in data) {
          pokemons.add(item['name']);
        }
        return pokemons;
      }
    } on Exception catch (_) {}
    return pokemons;
  }
}
