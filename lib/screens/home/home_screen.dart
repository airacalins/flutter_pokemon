import 'package:async_redux/async_redux.dart';
import 'package:ffuf_20220608_pokeke/actions/home_screen_actions.dart';
import 'package:ffuf_20220608_pokeke/screens/home/home_features/home_screen_factory.dart';
import 'package:ffuf_20220608_pokeke/screens/home/home_features/home_screen_view_model.dart';
import 'package:ffuf_20220608_pokeke/state/app_state.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeScreenViewModel>(
      vm: () => HomeScreenFactory(this),
      onInit: (store) async => store.dispatch(FetchPokemons()),
      builder: (context, vm) => Scaffold(
        appBar: AppBar(title: const Text('Pokeke')),
        body: ListView.builder(
          itemCount: vm.pokemons.length,
          itemBuilder: (context, index) =>
              ListTile(title: Text(vm.pokemons[index].name)),
        ),
      ),
    );
  }
}
