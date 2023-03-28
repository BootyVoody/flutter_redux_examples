import 'package:counter_redux_example/presentation/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class Application extends StatelessWidget {
  final Store<int> store;

  const Application({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
