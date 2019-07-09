import 'package:flutter/material.dart';

class IconGradient extends StatelessWidget {
  final IconData icon;
  final double size;

  const IconGradient({
    Key key,
    this.icon,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            center: Alignment.bottomCenter,
            radius: 0.5,
            colors: <Color>[Colors.greenAccent[200], Colors.blueAccent[200]],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: Icon(this.icon != null ? this.icon : Icons.dashboard,
            size: this.size != null ? this.size : 50.0));
  }
}
