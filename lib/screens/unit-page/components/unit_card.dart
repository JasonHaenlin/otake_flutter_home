import 'package:flutter/material.dart';
import 'package:otake_flutter_home/core/router.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/screens/unit-detail-page/unit_detail_page.dart';

class UnitCard extends StatelessWidget {
  final Unit data;

  const UnitCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToPage(context, UnitDetailPage(data)),
      child: Column(
        children: <Widget>[
          UnitInfo(data: data),
          UnitName(data: data),
          ZoomIcon()
        ],
      ),
    );
  }
}

class ZoomIcon extends StatelessWidget {
  const ZoomIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(height: 32.0),
        Icon(Icons.zoom_in, color: Colors.black26, size: 40.0),
      ],
    );
  }
}

class UnitName extends StatelessWidget {
  const UnitName({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Unit data;

  @override
  Widget build(BuildContext context) {
    return Text('Service ${data.name}',
        style: Theme.of(context).textTheme.display2);
  }
}

class UnitInfo extends StatelessWidget {
  const UnitInfo({
    Key key,
    @required this.data,
  }) : super(key: key);

  final Unit data;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
