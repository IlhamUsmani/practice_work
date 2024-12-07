import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_work/feature/auth/view/signin_screen.dart';
import 'package:practice_work/feature/auth/view/verification_screen.dart';

import 'package:practice_work/go_route.dart';

import 'package:practice_work/screen_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize(context);
    return const ProviderScope(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SigninScreen.pageName,
          onGenerateRoute: generateRoute),
    );
  }
}
