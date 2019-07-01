import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_base.dart';

class BlocProvider<T> extends InheritedWidget {
  final T bloc;

  BlocProvider({Key key, this.bloc, child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static T of<T>(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(_typeOf<BlocProvider<T>>())
              as BlocProvider)
          .bloc;

  static Type _typeOf<T>() => T;
}
