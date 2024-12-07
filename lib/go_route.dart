import 'package:flutter/material.dart';
import 'package:practice_work/feature/auth/view/signin_screen.dart';
import 'package:practice_work/feature/auth/view/signup_screen.dart';
import 'package:practice_work/feature/auth/view/verification_screen.dart';
import 'package:practice_work/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  return switch (settings.name) {
    SigninScreen.pageName => MaterialPageRoute(
        builder: (_) => const SigninScreen(), settings: settings),
    SignupScreen.pageName => MaterialPageRoute(
        builder: (_) => const SignupScreen(), settings: settings),
    VerificationScreen.pageName => MaterialPageRoute(
        builder: (_) => const VerificationScreen(), settings: settings),
    HomeScreen.pageName =>
      MaterialPageRoute(builder: (_) => const HomeScreen(), settings: settings),
    _ =>
      MaterialPageRoute(builder: (_) => const ErrorPage(), settings: settings),
  };
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error Page'),
      ),
      body: const Center(
        child: Text('404 Page Not Found'),
      ),
    );
  }
}
