import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CustomPaint(
          size: Size(200, 200),
          painter: CrossPaint(),
        ),
      ),
    );
  }
}
class LinePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
    ..color=Colors.black
    ..strokeWidth=3
    ..strokeCap=.round;
    canvas.drawLine(Offset(0, 50),Offset(200, 50) , paint);
  }

  @override
  bool shouldRepaint( LinePaint oldDelegate)=>false;
}

class PlusPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
      ..color=Colors.black
      ..strokeWidth=3
      ..strokeCap=.round;
    canvas.drawLine(Offset(0,100),Offset(200, 100) , paint);
    canvas.drawLine(Offset(100, 0),Offset(100, 200) , paint);

  }

  @override
  bool shouldRepaint( LinePaint oldDelegate)=>false;
}

class CrossPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
      ..color=Colors.black
      ..strokeWidth=3
      ..strokeCap=.round;
    canvas.drawLine(Offset(0,0),Offset(200, 200) , paint);
    canvas.drawLine(Offset(0, 200),Offset(200,0) , paint);

  }

  @override
  bool shouldRepaint( LinePaint oldDelegate)=>false;
}