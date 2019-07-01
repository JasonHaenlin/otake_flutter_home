import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/counter/counter_bloc.dart';
import 'package:otake_flutter_home/blocs/counter/counter_event.dart';

class FloatingActBtn extends StatelessWidget {
  const FloatingActBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final evenBloc = BlocProvider.of<CounterBloc>(context).counterBloc;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () => evenBloc.dispatch(CounterEvent.increment),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () => evenBloc.dispatch(CounterEvent.decrement),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}
