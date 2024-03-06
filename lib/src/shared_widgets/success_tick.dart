// ignore_for_file: cascade_invocations

import 'package:flutter/widgets.dart';
import 'package:regal/regal.dart';

class SuccessPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path_0 = Path();
    path_0.moveTo(size.width * 0.9770139, size.height * 0.02578571);
    path_0.arcToPoint(
      Offset(size.width * 0.9745278, size.height * 0.1423929),
      radius: Radius.elliptical(
        size.width * 0.06416667,
        size.height * 0.08250000,
      ),
    );
    path_0.lineTo(size.width * 0.2829444, size.height * 0.9843214);
    path_0.lineTo(size.width * 0.01879167, size.height * 0.6446429);
    path_0.arcToPoint(
      Offset(size.width * 0.1095417, size.height * 0.5279821),
      radius: Radius.elliptical(
        size.width * 0.06416667,
        size.height * 0.08250000,
      ),
    );
    path_0.lineTo(size.width * 0.2853889, size.height * 0.7541071);
    path_0.lineTo(size.width * 0.8863056, size.height * 0.02258929);
    path_0.arcToPoint(
      Offset(size.width * 0.9770000, size.height * 0.02578571),
      radius: Radius.elliptical(
        size.width * 0.06416667,
        size.height * 0.08250000,
      ),
    );
    path_0.close();

    final paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffffffff).withOpacity(1);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class SuccessTick extends StatelessWidget {
  const SuccessTick({super.key, this.size});

  final double? size;

  @override
  Widget build(BuildContext context) => Container(
        width: Spacing.large.value * 4,
        height: Spacing.large.value * 4,
        padding: Spacing.large.all,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: RegalColors.darkCyan,
        ),
        child: CustomPaint(
          foregroundPainter: SuccessPainter(),
        ),
      );
}
