import 'package:flutter/material.dart';

class HomeFilterIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _FilterIconPainter(),
      size: Size(24, 24),
    );
  }
}

class _FilterIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color(0xFF77994A)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke; // for stroke-only circles

    final Paint whitePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill; // for filled circles

    // Draw lines
    canvas.drawLine(Offset(0, 4), Offset(size.width, 4), paint);
    canvas.drawLine(Offset(0, 12), Offset(size.width, 12), paint);
    canvas.drawLine(Offset(0, 20), Offset(size.width, 20), paint);

    // Draw black circles
    canvas.drawCircle(Offset(size.width - 6, 4), 2, paint);
    canvas.drawCircle(
        Offset(6, 12), 2, paint); // Second line circle on the other side
    canvas.drawCircle(Offset(size.width - 6, 20), 2, paint);

    // Draw white inner circles to create the 'hole'
    canvas.drawCircle(Offset(size.width - 6, 4), 1, whitePaint);
    canvas.drawCircle(Offset(6, 12), 1, whitePaint);
    canvas.drawCircle(Offset(size.width - 6, 20), 1, whitePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
