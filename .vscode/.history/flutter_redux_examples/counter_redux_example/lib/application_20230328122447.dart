import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class Application extends StatelessWidget {
  final Store<int> store;

  const Application({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
