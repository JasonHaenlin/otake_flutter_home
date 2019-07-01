import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/counter/counter_bloc.dart';
import 'package:otake_flutter_home/screens/counter/components/body.dart';
import 'package:otake_flutter_home/screens/counter/components/floating_act_btn.dart';

class Counter extends StatelessWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      bloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('Counter Demo')),
        body: Body(),
        floatingActionButton: FloatingActBtn(),
      ),
    );
  }
}
