import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/entry/entry_bloc.dart';
import 'package:otake_flutter_home/screens/list/components/body.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EntryBloc>(
      bloc: EntryBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('List Demo')),
        body: Body(),
      ),
    );
  }
}
