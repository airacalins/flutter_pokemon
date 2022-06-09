import 'package:ffuf_20220608_pokeke/models/pokemon/pokemon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    required List<Pokemon> pokemons,
  }) = _AppState;

  factory AppState.initialState({required}) => AppState(pokemons: []);

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
