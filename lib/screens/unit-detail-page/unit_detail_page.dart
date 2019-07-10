import 'package:flutter/material.dart';
import 'package:otake_flutter_home/core/router.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/screens/unit-detail-page/components/unit_detail_body.dart';
import 'package:otake_flutter_home/theme/colors.dart';

class UnitDetailPage extends StatelessWidget {
  final Unit data;
  const UnitDetailPage(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            expandedHeight: 100.0,
            backgroundColor: kColorSecondary,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                children: <Widget>[
                  Image.network(
                    data.logo,
                    scale: 1.5,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Service ${data.name}',
                    style: Theme.of(context).textTheme.display3,
                  ),
                ],
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.close),
              tooltip: 'Close',
              onPressed: () => navigateBackFromPage(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([UnitDetailBody(this.data)]),
          )
        ],
      ),
    );
  }
}
