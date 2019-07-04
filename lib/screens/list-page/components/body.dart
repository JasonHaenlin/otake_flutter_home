import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/entry/entry_bloc.dart';
import 'package:otake_flutter_home/models/entry_model.dart';
import 'package:otake_flutter_home/screens/list-page/components/entry_card.dart';
import 'package:otake_flutter_home/theme/colors.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventBloc = BlocProvider.of<EntryBloc>(context).entryBloc;

    return StreamBuilder<List<Entry>>(
      stream: eventBloc.currentValue$,
      builder: (BuildContext context, AsyncSnapshot<List<Entry>> snapshot) =>
          snapshot.hasData
              ? (ListViewDemo(data: snapshot.data))
              : Center(child: CircularProgressIndicator()),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  final List<Entry> data;

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
          color: color(index),
          child: EntryCard(data: data[index]),
        );
      }),
    );
  }
}
