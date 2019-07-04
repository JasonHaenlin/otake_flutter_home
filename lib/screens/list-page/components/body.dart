import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/entry/entry_bloc.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/screens/list-page/components/unit_card.dart';
import 'package:otake_flutter_home/theme/colors.dart';
import 'package:otake_flutter_home/theme/colors.dart' as prefix0;

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventBloc = BlocProvider.of<EntryBloc>(context).entryBloc;

    return StreamBuilder<List<Unit>>(
      stream: eventBloc.currentValue$,
      builder: (BuildContext context, AsyncSnapshot<List<Unit>> snapshot) =>
          snapshot.hasData
              ? (ListViewDemo(data: snapshot.data))
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
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(data.length, (index) {
        return Container(
          height: 100.0,
          color: prefix0.colorMonocromatic(index, 'deepPurple'),
          child: UnitCard(data: data[index]),
        );
      }),
    );
  }
}
