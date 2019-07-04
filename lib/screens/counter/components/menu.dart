import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[600],
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 32.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child:
                  Text('menu 1', style: Theme.of(context).textTheme.display2),
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
