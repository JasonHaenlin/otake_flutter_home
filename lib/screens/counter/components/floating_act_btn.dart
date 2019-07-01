import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/counter/counter_bloc.dart';

class FloatingActBtn extends StatelessWidget {
  const FloatingActBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final evenBloc = BlocProvider.of<CounterBloc>(context).counterBloc;

    return FloatingActionButton(
      onPressed: () => evenBloc.increment.add(null),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
