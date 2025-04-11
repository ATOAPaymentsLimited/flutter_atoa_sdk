import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  DottedLinePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color // Line color
      ..strokeWidth = 2.0 // Line thickness
      ..style = PaintingStyle.stroke;

    const dashWidth = 2.0; // Width of each dash
    const dashSpace = 2.0; // Space between dashes
    var startX = 0.0;

    while (startX < size.width) {
      // Draw a line segment (dash)
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
