import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/string_constants.dart';

class OvalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double strokeWidth = 2.0;

    // Paint for outer border
    final Paint borderPaint = Paint()
      ..color = Colors.green.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    // Paint for inner green shade
    final Paint innerShadePaint = Paint()
      ..color = white
      ..style = PaintingStyle.fill;

    canvas.save();

    canvas.scale(size.width / size.height, 1);

    final double radius = size.height / 2 - strokeWidth / 2;
    canvas.drawCircle(
        Offset(size.height / 2, size.height / 2), radius, innerShadePaint);

    canvas.drawCircle(
        Offset(size.height / 2, size.height / 2), radius, borderPaint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint unless properties change
  }
}
