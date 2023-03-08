// ignore_for_file: prefer_const_constructors

import 'package:day7task1/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: "Noto Sans N'Ko"),
    );
  }
}
