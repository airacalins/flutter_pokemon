import 'package:async_redux/async_redux.dart';
import 'package:ffuf_20220608_pokeke/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:ffuf_20220608_pokeke/state/app_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    final store = Store<AppState>(initialState: AppState.initialState());

    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
