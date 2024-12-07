import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/screen_size.dart';

class HomeScreenProgessBar extends StatelessWidget {
  const HomeScreenProgessBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * zeroPointFour,
      width: ScreenSize.width,
      child: CircularPercentIndicator(
        radius: 50.0,
        lineWidth: 9.0,
        animation: true,
        animationDuration: 1000,
        percent: 0.5,
        center: const Text(
          '50%',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: darkGreen,
          ),
        ),
        progressColor: darkGreen,
        backgroundColor: lightGrey,
        footer: const Center(
          child: Text(
            'Projects Completion',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
