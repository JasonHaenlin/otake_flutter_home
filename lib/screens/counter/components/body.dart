import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/counter/counter_bloc.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final evenBloc = BlocProvider.of<CounterBloc>(context).counterBloc;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          StreamBuilder(
            stream: evenBloc.currentValue$,
            builder: (BuildContext context, AsyncSnapshot snapshot) => Text(
                  '${snapshot.data}',
                  style: Theme.of(context).textTheme.display1,
                ),
          ),
        ],
      ),
    );
  }
}
