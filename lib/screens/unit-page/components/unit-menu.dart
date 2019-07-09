import 'package:flutter/material.dart';
import 'package:otake_flutter_home/theme/colors.dart';
import 'package:otake_flutter_home/theme/colors.dart' as prefix0;

class UnitMenu extends StatelessWidget {
  const UnitMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColorAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 32.0),
            InkWell(
              onTap: () => print('menu 1 tapped'),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child:
                    Text('menu 1', style: Theme.of(context).textTheme.display2),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child:
                  Text('menu 2', style: Theme.of(context).textTheme.display2),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child:
                  Text('menu 3', style: Theme.of(context).textTheme.display2),
            ),
          ],
        ),
      ),
    );
  }
}
