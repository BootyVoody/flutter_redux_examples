import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StoreConnector<int, String>(
          converter: (store) => store.state.toString(),
          builder: (context, count) {
            return Text('The button has been pushed this many times: $count');
          },
        ),
      ),
      floatingActionButton: ,
    );
  }
}
