import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/entry/entry_bloc.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/screens/unit-page/components/unit_card.dart';

class UnitBody extends StatelessWidget {
  const UnitBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventBloc = BlocProvider.of<EntryBloc>(context).entryBloc;

    return StreamBuilder<List<Unit>>(
      stream: eventBloc.currentValue$,
      builder: (BuildContext context, AsyncSnapshot<List<Unit>> snapshot) =>
          snapshot.hasData
              ? ListViewUnits(data: snapshot.data)
              : Center(child: CircularProgressIndicator()),
    );
  }
}

class ListViewUnits extends StatelessWidget {
  final List<Unit> data;

  const ListViewUnits({
    @required this.data,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: UnitCard(data: data[index]),
        );
      },
    );
  }
}
