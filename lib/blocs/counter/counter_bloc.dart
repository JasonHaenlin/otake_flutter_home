import 'package:otake_flutter_home/blocs/counter/counter_event.dart';

class CounterBloc {
  CounterState _counter;

  CounterBloc() {
    _counter = CounterState(0);
  }

  CounterState get counterBloc => _counter;
}
