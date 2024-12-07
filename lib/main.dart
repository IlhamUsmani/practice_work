import 'package:flutter/material.dart';
import 'package:practice_work/home_screen.dart';
import 'package:practice_work/screen_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
