import 'package:counter_redux_example/reducer/counter_reducer.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<int>(counterReducer, initialState: 0);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
