import 'package:counter_redux_example/action/counter_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Redux Example'),
      ),
      body: Center(
        child: StoreConnector<int, String>(
          converter: (store) => store.state.toString(),
          builder: (context, count) {
            return Text('The button has been pushed this many times: $count');
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StoreConnector<int, VoidCallback>(
              converter: (store) {
                return () => store.dispatch(CounterActions.decrement);
              },
              builder: (context, onDecrement) {
                return FloatingActionButton(
                  onPressed: onDecrement,
                  child: const Icon(Icons.remove),
                );
              },
            ),
            const SizedBox(width: 10),
            StoreConnector<int, VoidCallback>(
              converter: (store) {
                return () => store.dispatch(CounterActions.increment);
              },
              builder: (context, onIncrement) {
                return FloatingActionButton(
                  onPressed: onIncrement,
                  child: const Icon(Icons.add),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
