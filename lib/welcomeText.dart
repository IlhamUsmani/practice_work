import 'package:flutter/material.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/string_constants.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft + const Alignment(zeroPointTwo, 0),
          child: Text(
            textAlign: TextAlign.left,
            welcomeTo,
            style: TextStyle(
                fontSize: ScreenSize.height * zeroPointZeroFourZero,
                fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft + const Alignment(zeroPointTwo, 0),
          child: SizedBox(
              width: ScreenSize.width * zeroPointTHreeFive,
              child: Image.asset(logo)),
        ),
      ],
    );
  }
}
