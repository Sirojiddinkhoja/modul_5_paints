import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CustomPaint(
          painter: TrianglePaint(),
          size: Size(200, 200),
        ),
      ),
    );
  }
}
class CirclePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
        ..color=Colors.black
        ..style=.stroke
        ..strokeWidth=3;
    var center=Offset(size.width/2, size.height/2);
    var radius=100.0;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint( CirclePaint oldDelegate)=>false;
}

class RectanglePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
      ..color=Colors.black
      ..style=.stroke
      ..strokeWidth=3;
    const rectangle=Rect.fromLTWH(0, 0, 200, 200);

    canvas.drawRect(rectangle, paint);
  }

  @override
  bool shouldRepaint( CirclePaint oldDelegate)=>false;
}

class TrianglePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
      ..color=Colors.black
      ..style=.stroke
      ..strokeWidth=3;

    final path=Path()
    ..moveTo(100, 0)
    ..lineTo(200, 200)
    ..relativeLineTo(-200, 0)
    ..close();

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint( CirclePaint oldDelegate)=>false;
}