import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/screen_size.dart';

class SigninToprow extends StatelessWidget {
  const SigninToprow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: IconButton(
          onPressed: () {},
          icon: RotatedBox(
            quarterTurns: 3,
            child: Icon(
              Icons.arrow_drop_up_sharp,
              size: ScreenSize.height * 0.07,
            ),
          ),
        ),
      ),
      const Spacer(
        flex: 2,
      ),
      Expanded(
        flex: 4,
        child: SizedBox(
          child: SizedBox(
              width: ScreenSize.width * zeroPointTHreeFive,
              child: Image.asset(logo)),
        ),
      ),
      const Spacer(
        flex: 3,
      ),
    ]);
  }
}
