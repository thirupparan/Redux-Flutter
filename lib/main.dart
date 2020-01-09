import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import './widgets/counter.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './store/reducer.dart';

void main() {
  final Store<int> store = Store<int>(reducer, initialState: 01);
  runApp(App(store));
}

class App extends StatelessWidget {
  final Store<int> store;
  App(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
          title: 'Flutter Redux',
          home: Scaffold(
              appBar: AppBar(
                title: Text('Redux in Flutter'),
              ),
              body: Counter())),
    );
  }
}
