import 'dart:ui';
import 'mainscreen.dart';
import 'package:flutter/material.dart';

int chapterColor = 0xff54420f;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Guide',

      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFa2bcaf),
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
