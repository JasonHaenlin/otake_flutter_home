import 'package:flutter/material.dart';
import 'package:otake_flutter_home/models/unit_model.dart';

class UnitDetailCard extends StatelessWidget {
  const UnitDetailCard({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Unit data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      decoration: BoxDecoration(color: Colors.cyan[200]),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.network(data.logo),
                SizedBox(width: 30),
                Text(
                  'Service ${data.name}',
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Status : ',
                    style: Theme.of(context).textTheme.display3,
                  ),
                  Icon(
                    data.status['value'],
                    color: data.status['color'],
                    size: 40.0,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () => print('RELAOD'),
                  child: Text('RELOAD'),
                ),
                SizedBox(width: 20),
                RaisedButton(
                  onPressed: () => print('START/STOP'),
                  child: Text('START/STOP'),
                  // color: Colors.indigo,
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
