import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StoreConnector(
          converter: (store) => ,
          builder: Text(data),
        ),
      ),
    );
  }
}
