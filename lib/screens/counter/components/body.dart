import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/counter/counter_bloc.dart';
import 'package:otake_flutter_home/screens/counter/components/floating_act_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final evenBloc = BlocProvider.of<CounterBloc>(context).counterBloc;
    return Center(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Center(child: Text('You have pushed the button this many times:')),
          Center(
              child: StreamBuilder(
            stream: evenBloc.currentValue$,
            builder: (BuildContext context, AsyncSnapshot snapshot) => Text(
                  '${snapshot.data}',
                  style: Theme.of(context).textTheme.display1,
                ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(child: FloatingActBtn()),
          )
        ],
      ),
    );
  }
}
