import 'package:flutter/material.dart';
import 'package:otake_flutter_home/core/router.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/screens/unit-detail-page/unit_detail_page.dart';
import 'package:otake_flutter_home/theme/colors.dart';

class UnitCard extends StatelessWidget {
  final Unit data;

  const UnitCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToPage(context, UnitDetailPage(data)),
      child: Material(
        elevation: 8.0,
        color: kColorPrimaryLight,
        child: Column(
          children: <Widget>[
            UnitInfo(data: data),
            UnitName(data: data),
          ],
        ),
      ),
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
    return SizedBox(
      width: double.infinity,
      child: Container(
        color: kColorSecondary,
        child: Text(
          'Service ${data.name}',
          style: Theme.of(context).textTheme.display2,
          textAlign: TextAlign.center,
        ),
      ),
    );
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
