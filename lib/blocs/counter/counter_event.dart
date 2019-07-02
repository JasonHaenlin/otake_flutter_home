import 'dart:async';

import 'package:otake_flutter_home/blocs/bloc_base.dart';

enum CounterEvent { increment, decrement }

class CounterState extends BlocBase<CounterEvent, int> {
  CounterState(int seed) : super(seed);

  @override
  Stream<int> eventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield this.currentValue + 1;
        break;
      case CounterEvent.decrement:
        yield this.currentValue - 1;
        break;
      default:
    }
  }
}
