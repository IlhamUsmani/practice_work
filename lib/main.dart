import 'package:flutter/material.dart';
import 'package:practice_work/screen_size.dart';

import 'package:practice_work/varification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);
    return const MaterialApp(home: VarificationScreen());
  }
}
