import 'package:flutter/material.dart';
import 'package:otake_flutter_home/models/unit_model.dart';
import 'package:otake_flutter_home/screens/unit-detail-page/components/unit_detail_body.dart';

class UnitDetailPage extends StatelessWidget {
  final Unit data;
  const UnitDetailPage(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: UnitDetailBody(this.data),
    );
  }
}
