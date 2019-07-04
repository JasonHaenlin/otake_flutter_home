import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/counter/counter_bloc.dart';
import 'package:otake_flutter_home/screens/counter-page/components/floating_act_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _evenBloc = BlocProvider.of<CounterBloc>(context).counterBloc;
    return Stack(
      children: <Widget>[
        Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Center(
                child: Text('You have pushed the button this many times:'),
              ),
              Center(
                  child: StreamBuilder(
                stream: _evenBloc.currentValue$,
                builder: (BuildContext context, AsyncSnapshot snapshot) => Text(
                      '${snapshot.data}',
                      style: Theme.of(context).textTheme.display1,
                    ),
              )),
            ],
          ),
        ),
        ListView(
          reverse: true,
          children: <Widget>[
            FloatingActBtn(),
          ],
        ),
      ],
    );
  }
}
