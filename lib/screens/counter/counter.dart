import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/counter/counter_bloc.dart';
import 'package:otake_flutter_home/components/backdrop.dart';
import 'package:otake_flutter_home/screens/counter/components/body.dart';

class Counter extends StatelessWidget {
  const Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      bloc: CounterBloc(),
      child: Backdrop(
        frontLayer: Body(),
        backLayer: Container(color: Colors.cyan[600]),
        frontTitle: Text('Counter Demo'),
        backTitle: Text('Menu'),
      ),
      // child: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Counter Demo'),
      //     actions: <Widget>[
      //       IconButton(
      //           icon: Icon(Icons.navigate_next),
      //           onPressed: () => navigateToPage(context, ListDemo()))
      //     ],
      //   ),
      //   body: Body(),
      //   floatingActionButton: FloatingActBtn(),
      // ),
    );
  }
}
