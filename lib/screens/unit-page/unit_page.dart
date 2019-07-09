import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/entry/entry_bloc.dart';
import 'package:otake_flutter_home/components/backdrop.dart';
import 'package:otake_flutter_home/screens/unit-page/components/unit-menu.dart';
import 'package:otake_flutter_home/screens/unit-page/components/unit_body.dart';

class UnitPage extends StatelessWidget {
  const UnitPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EntryBloc>(
      bloc: EntryBloc(),
      child: Backdrop(
        frontLayer: UnitBody(),
        backLayer: UnitMenu(),
        frontTitle: Text('Services Overview'),
        backTitle: Text('Parameters'),
      ),
    );
  }
}
