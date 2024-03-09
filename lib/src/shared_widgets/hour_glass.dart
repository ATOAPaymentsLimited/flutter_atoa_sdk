// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:regal/regal.dart';

class HourGlassPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path_1 = Path();
    path_1.moveTo(21.8327, 53.332);
    path_1.lineTo(43.166, 53.332);
    path_1.lineTo(43.166, 45.332);
    path_1.cubicTo(43.166, 42.3987, 42.1216, 39.8876, 40.0327, 37.7987);
    path_1.cubicTo(37.9438, 35.7098, 35.4327, 34.6654, 32.4993, 34.6654);
    path_1.cubicTo(29.566, 34.6654, 27.0549, 35.7098, 24.966, 37.7987);
    path_1.cubicTo(22.8771, 39.8876, 21.8327, 42.3987, 21.8327, 45.332);
    path_1.lineTo(21.8327, 53.332);
    path_1.close();
    path_1.moveTo(32.4993, 29.332);
    path_1.cubicTo(35.4327, 29.332, 37.9438, 28.2876, 40.0327, 26.1987);
    path_1.cubicTo(42.1216, 24.1098, 43.166, 21.5987, 43.166, 18.6654);
    path_1.lineTo(43.166, 10.6654);
    path_1.lineTo(21.8327, 10.6654);
    path_1.lineTo(21.8327, 18.6654);
    path_1.cubicTo(21.8327, 21.5987, 22.8771, 24.1098, 24.966, 26.1987);
    path_1.cubicTo(27.0549, 28.2876, 29.566, 29.332, 32.4993, 29.332);
    path_1.close();
    path_1.moveTo(51.166, 58.6654);
    path_1.lineTo(13.8327, 58.6654);
    path_1.cubicTo(13.0771, 58.6654, 12.4433, 58.4094, 11.9313, 57.8974);
    path_1.cubicTo(11.4211, 57.3871, 11.166, 56.7543, 11.166, 55.9987);
    path_1.cubicTo(11.166, 55.2431, 11.4211, 54.6103, 11.9313, 54.1);
    path_1.cubicTo(12.4433, 53.588, 13.0771, 53.332, 13.8327, 53.332);
    path_1.lineTo(16.4993, 53.332);
    path_1.lineTo(16.4993, 45.332);
    path_1.cubicTo(16.4993, 42.6209, 17.1331, 40.076, 18.4007, 37.6974);
    path_1.cubicTo(19.6665, 35.3205, 21.4327, 33.4209, 23.6993, 31.9987);
    path_1.cubicTo(21.4327, 30.5765, 19.6665, 28.676, 18.4007, 26.2974);
    path_1.cubicTo(17.1331, 23.9205, 16.4993, 21.3765, 16.4993, 18.6654);
    path_1.lineTo(16.4993, 10.6654);
    path_1.lineTo(13.8327, 10.6654);
    path_1.cubicTo(13.0771, 10.6654, 12.4433, 10.4094, 11.9313, 9.89736);
    path_1.cubicTo(11.4211, 9.38714, 11.166, 8.75425, 11.166, 7.9987);
    path_1.cubicTo(11.166, 7.24314, 11.4211, 6.60936, 11.9313, 6.09736);
    path_1.cubicTo(12.4433, 5.58714, 13.0771, 5.33203, 13.8327, 5.33203);
    path_1.lineTo(51.166, 5.33203);
    path_1.cubicTo(51.9216, 5.33203, 52.5545, 5.58714, 53.0647, 6.09736);
    path_1.cubicTo(53.5767, 6.60936, 53.8327, 7.24314, 53.8327, 7.9987);
    path_1.cubicTo(53.8327, 8.75425, 53.5767, 9.38714, 53.0647, 9.89736);
    path_1.cubicTo(52.5545, 10.4094, 51.9216, 10.6654, 51.166, 10.6654);
    path_1.lineTo(48.4993, 10.6654);
    path_1.lineTo(48.4993, 18.6654);
    path_1.cubicTo(48.4993, 21.3765, 47.8665, 23.9205, 46.6007, 26.2974);
    path_1.cubicTo(45.3331, 28.676, 43.566, 30.5765, 41.2993, 31.9987);
    path_1.cubicTo(43.566, 33.4209, 45.3331, 35.3205, 46.6007, 37.6974);
    path_1.cubicTo(47.8665, 40.076, 48.4993, 42.6209, 48.4993, 45.332);
    path_1.lineTo(48.4993, 53.332);
    path_1.lineTo(51.166, 53.332);
    path_1.cubicTo(51.9216, 53.332, 52.5545, 53.588, 53.0647, 54.1);
    path_1.cubicTo(53.5767, 54.6103, 53.8327, 55.2431, 53.8327, 55.9987);
    path_1.cubicTo(53.8327, 56.7543, 53.5767, 57.3871, 53.0647, 57.8974);
    path_1.cubicTo(52.5545, 58.4094, 51.9216, 58.6654, 51.166, 58.6654);
    path_1.close();

    final paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffCCCCCC).withOpacity(1);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class HourGlass extends StatelessWidget {
  const HourGlass({super.key, this.size});

  final double? size;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: Spacing.large.value * 4,
        height: Spacing.large.value * 4,
        child: CustomPaint(
          painter: HourGlassPainter(),
          size: Size(
            Spacing.large.value * 4,
            Spacing.large.value * 4,
          ),
        ),
      );
}
