import 'package:flutter/material.dart';
import 'package:otake_flutter_home/blocs/bloc_provider.dart';
import 'package:otake_flutter_home/blocs/entry/entry_bloc.dart';
import 'package:otake_flutter_home/models/entry_model.dart';
import 'package:otake_flutter_home/screens/list/components/entry_card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventBloc = BlocProvider.of<EntryBloc>(context).entryBloc;

    return StreamBuilder<List<Entry>>(
      stream: eventBloc.currentValue$,
      builder: (BuildContext context, AsyncSnapshot<List<Entry>> snapshot) =>
          snapshot.hasData
              ? (ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100.0,
                      color: index % 2 == 1
                          ? Colors.amber[600]
                          : Colors.amber[400],
                      child: EntryCard(data: snapshot.data[index]),
                    );
                  },
                ))
              : Center(child: CircularProgressIndicator()),
    );
  }
}
