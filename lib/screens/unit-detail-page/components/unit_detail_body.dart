import 'package:flutter/material.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/screens/unit-detail-page/components/unit_detail_card.dart';

class UnitDetailBody extends StatelessWidget {
  final Unit data;
  const UnitDetailBody(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UnitDetailCard(data: data),
        SizedBox(height: 20),
        LogTitle(),
        LogMessages()
      ],
    );
  }
}

class LogMessages extends StatelessWidget {
  const LogMessages({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
          const Text('blablablablablablablablablablablablabla'),
        ],
      ),
    );
  }
}

class LogTitle extends StatelessWidget {
  const LogTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          'Last Log',
          style: Theme.of(context).textTheme.display3,
        ),
      ),
    );
  }
}
