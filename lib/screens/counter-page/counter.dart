import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/counter/counter_bloc.dart';
import 'package:otake_flutter_home/components/backdrop.dart';
import 'package:otake_flutter_home/screens/counter-page/components/body.dart';
import 'package:otake_flutter_home/screens/counter-page/components/menu.dart';

class Counter extends StatelessWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      bloc: CounterBloc(),
      child: Backdrop(
        frontLayer: Body(),
        backLayer: Menu(),
        frontTitle: Text('Counter Demo'),
        backTitle: Text('Menu'),
      ),
    );
  }
}
