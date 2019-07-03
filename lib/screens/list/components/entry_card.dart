import 'package:flutter/material.dart';
import 'package:otake_flutter_home/models/entry_model.dart';

class EntryCard extends StatelessWidget {
  final Entry data;

  const EntryCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Entry ${data.entry}',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
        Text(
          'Description ${data.description}',
          style: Theme.of(context).textTheme.subtitle,
        )
      ],
    );
  }
}
