import 'package:async_redux/async_redux.dart';

class HomeScreenViewModel extends Vm {
  HomeScreenViewModel({
    required this.names,
  }) : super(equals: [names]);

  final List<String> names;
}
