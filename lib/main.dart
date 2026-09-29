import 'package:flutter/material.dart';
import 'package:modul_5_paints/exercise_1.dart';

import 'exercise_2.dart';
import 'exercise_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exercise3(),
    );
  }
}
