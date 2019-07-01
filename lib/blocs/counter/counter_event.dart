import 'dart:async';

import 'package:otake_flutter_home/blocs/bloc_base.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class CounterState extends BlocBase {
  int _counter = 0;

  final _counter$ = BehaviorSubject<int>(seedValue: 0);
  final _incrementController = StreamController<void>();

  CounterState() {
    _incrementController.stream.listen((void _) => _counter$.add(++_counter));
  }

  Sink<void> get increment => _incrementController.sink;

  Stream<int> get counter$ => _counter$.stream;

  void dispose() {
    _incrementController.close();
    _counter$.close();
  }
}
