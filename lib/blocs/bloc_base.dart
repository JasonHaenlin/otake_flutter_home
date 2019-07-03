import 'dart:async';

import 'package:rxdart/rxdart.dart';

abstract class BlocBase<Event, Type> {
  Event _currentEvent;

  BehaviorSubject<Type> _currentValue$;
  Type _currentValue;

  Stream<Type> get currentValue$ => _currentValue$.stream;
  Type get currentValue => _currentValue;
  Event get currentEvent => _currentEvent;

  BlocBase({Type seed, Event initEvent}) {
    _currentValue$ = BehaviorSubject(seedValue: seed);
    _currentValue = seed;
    if (initEvent != null) {
      dispatch(initEvent);
    }
  }

  void dispose() {
    _currentValue$.close();
  }

  void dispatch(Event event) async {
    _currentEvent = event;
    dynamic stream = eventToState(event);
    await for (dynamic value in stream) {
      _currentValue$.add(value);
      _currentValue = value;
    }
  }

  Stream<Type> eventToState(Event event);
}
