import 'dart:async';

import 'package:otake_flutter_home/blocs/bloc_base.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

enum CounterEvent { increment, decrement }

class CounterState extends BlocBase<CounterEvent, int> {
  int _counter = 0;

  final _counter$ = BehaviorSubject<int>(seedValue: 0);

  Stream<int> get counter$ => _counter$.stream;

  @override
  void dispose() {
    _counter$.close();
  }

  @override
  void eventToState(CounterEvent event) {
    switch (event) {
      case CounterEvent.increment:
        _counter$.add(++_counter);
        break;
      case CounterEvent.decrement:
        _counter$.add(--_counter);
        break;
      default:
    }
  }
}
