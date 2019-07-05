import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/entry/entry_bloc.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/screens/unit-page/components/unit_card.dart';
import 'package:otake_flutter_home/theme/colors.dart';

class UnitBody extends StatelessWidget {
  const UnitBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventBloc = BlocProvider.of<EntryBloc>(context).entryBloc;

    return StreamBuilder<List<Unit>>(
      stream: eventBloc.currentValue$,
      builder: (BuildContext context, AsyncSnapshot<List<Unit>> snapshot) =>
          snapshot.hasData
              ? ListViewDemo(data: snapshot.data)
              : Center(child: CircularProgressIndicator()),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  final List<Unit> data;

  const ListViewDemo({
    @required this.data,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(data.length, (index) {
            return Container(
              height: 100.0,
              color: colorMonocromatic(index, 'cyan'),
              child: UnitCard(data: data[index]),
            );
          }),
        );
      },
    );
  }
}
