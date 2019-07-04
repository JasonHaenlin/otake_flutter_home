import 'package:flutter/material.dart';
import 'package:otake_flutter_home/core/router.dart';
import 'package:otake_flutter_home/models/unit_model.dart';

class UnitCard extends StatelessWidget {
  final Unit data;

  const UnitCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateBackFromPage(context),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(data.logo),
              ),
              Icon(
                data.status['value'],
                color: data.status['color'],
                size: 60.0,
              ),
            ],
          ),
          Text(
            'Service ${data.name}',
            style: Theme.of(context).textTheme.display2,
          ),
        ],
      ),
    );
  }
}
