import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercise3 extends StatefulWidget {
  const Exercise3({super.key});

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CustomPaint(painter: BoxPaint(), size: Size(200, 200)),
      ),
    );
  }
}

class RombPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3
      ..style = .stroke;

    final path = Path()
      ..moveTo(100, 0)
      ..lineTo(200, 100)
      ..lineTo(100, 200)
      ..lineTo(0, 100)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SixAnglePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3
      ..style = .stroke;

    final path = Path()
      ..moveTo(50, 0)
      ..lineTo(150, 0)
      ..lineTo(200, 75)
      ..lineTo(150, 150)
      ..lineTo(50, 150)
      ..lineTo(0, 75)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class BoxPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final fill = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill;

    final edge = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeJoin = StrokeJoin.round;

    final filled = Path()
      ..moveTo(0, 25)
      ..lineTo(180, 25)
      ..lineTo(200, 45)
      ..lineTo(200, 175)
      ..lineTo(20, 175)
      ..lineTo(0, 155)
      ..close();
    canvas.drawPath(filled, fill);

    final front = Rect.fromLTRB(20, 45, 200, 175);
    canvas.drawRect(front, edge);

    canvas.drawLine(const Offset(20, 45), const Offset(0, 25), edge);
    canvas.drawLine(const Offset(200, 45), const Offset(180, 25), edge);
    canvas.drawLine(const Offset(20, 175), const Offset(0, 155), edge);

    canvas.drawLine(const Offset(0, 25), const Offset(180, 25), edge);
    canvas.drawLine(const Offset(0, 25), const Offset(0, 155), edge);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
