import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

class LastCVElementPainter extends CustomPainter {
  LastCVElementPainter(this.image, this.animationValue, this.color);
  final ui.Image image;
  final double animationValue;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    drawShadow(canvas, size);

    drawCircle(size, canvas);

    drawLeftLine(size, canvas);

    drawImage(canvas, size);
  }

  void drawShadow(Canvas canvas, Size size) {
    Paint circlePaint = Paint()
      ..color = Colors.grey.withOpacity(math.max(.1, animationValue * 0.7))
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    canvas.drawOval(
      Rect.fromLTRB(
        size.width * .3,
        size.height * 0.55,
        size.width * .7,
        size.height * 0.56,
      ),
      circlePaint,
    );
  }

  void drawCircle(Size size, Canvas canvas) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke;

    final center =
        Offset(size.width / 2, size.height * 0.4 - animationValue * 50);
    final radius = size.width / 3.5;

    canvas.drawCircle(center, radius, paint);
  }

  void drawLeftLine(Size size, Canvas canvas) {
    final linePaint = Paint()
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..shader = LinearGradient(
        colors: [
          Colors.white,
          color,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.center,
      ).createShader(
        Rect.fromLTWH(
          0 + animationValue * 20,
          0,
          size.width * .10,
          size.height * 0.4,
        ),
      );

    final lineStart = Offset(size.width * .18, size.height * 0.4);
    final lineEnd = Offset(0, size.height * 0.4);

    canvas.drawLine(lineStart, lineEnd, linePaint);
  }

  void drawImage(Canvas canvas, Size size) {
    canvas.drawImage(
        image,
        Offset(size.width * 0.5 - image.width / 2,
            size.height * 0.4 - image.height / 2 - animationValue * 50),
        Paint());
  }

  @override
  bool shouldRepaint(LastCVElementPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(LastCVElementPainter oldDelegate) => false;
}
