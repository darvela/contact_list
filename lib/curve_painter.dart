import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue[800];
    paint.style = PaintingStyle.fill;
    //paint.strokeWidth = 2.0;

    var path = Path();

    Point a = Point(size.width * 0.3, size.height * 0.5);
    Point b = Point(size.width * 0.7, size.height * 0.5);
    Point control1 = Point(size.width * 0.2, size.height * 0.2);
    Point control2 = Point(size.width / 2, size.height * 0.9);
    Point control3 = Point(size.width * 0.8, control1.y);

  /*  path.addOval(Rect.fromCircle(
        center: new Offset(size.width * 0.3, size.height * 0.5),
        radius: 5.0));

    path.addOval(Rect.fromCircle(
        center: new Offset(size.width * 0.7, size.height * 0.5),
        radius: 5.0));

    path.addOval(Rect.fromCircle(
        center: new Offset(size.width * 0.2, size.height * 0.2),
        radius: 5.0));

    path.addOval(Rect.fromCircle(
        center: new Offset(size.width / 2, size.height * 0.9),
        radius: 5.0));

    path.addOval(Rect.fromCircle(
        center: new Offset(size.width * 0.8, control1.y),
        radius: 5.0));*/

    path.lineTo(0, size.height * 0.125);
    path.quadraticBezierTo(control1.x, control1.y, a.x, a.y);
    path.quadraticBezierTo(control2.x, control2.y, b.x, b.y);
    path.quadraticBezierTo(control3.x, control3.y, size.width, size.height * 0.125);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
