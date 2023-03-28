import 'package:counter_redux_example/application.dart';
import 'package:counter_redux_example/reducer/counter_reducer.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<int>(counterReducer, initialState: 0);

  runApp(
    Application(store: store),
  );
}
