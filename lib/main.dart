import 'package:flutter/material.dart';
import 'package:quiz/views/category_Screen/category_screen.dart';
import 'package:quiz/views/home_screen/home_screen.dart';
import 'package:quiz/views/result_Screen/result_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryScreen(),
    );
  }
}
