import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 200);

    var firstControlPoint = Offset(10, size.height - 263);

    path.arcTo(
        Rect.fromCircle(
            center: Offset(firstControlPoint.dx, firstControlPoint.dy),
            radius: 20),
        10,
        5,
        false);

    path.lineTo(0.0, size.height);
    path.lineTo(size.height, size.width + 800);
    path.arcTo(
        Rect.fromCircle(
            center: Offset(size.width - 10, size.height - 263), radius: 20),
        26,
        5,
        false);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
