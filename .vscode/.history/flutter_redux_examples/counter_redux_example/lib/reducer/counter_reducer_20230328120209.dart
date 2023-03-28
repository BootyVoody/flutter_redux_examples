import 'package:counter_redux_example/action/counter_actions.dart';

int counterReducer(int state, dynamic action) {
  switch (action) {
    case CounterActions.increment:
      return state + 1;
    case CounterActions.decrement:
      if (state == 0) {
        return 0;
      }

      return state - 1;
    default:
  }
}
