import 'package:flutter/material.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/textfield.dart';

class VerificationCodeRow extends StatelessWidget {
  const VerificationCodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < 4; i++) const VerificationBox(),
      ],
    );
  }
}

class VerificationBox extends StatelessWidget {
  const VerificationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: CustomTextField(
        text: '    1',
        height: ScreenSize.height * zeroPointOne,
        width: ScreenSize.width * zeroPointOneFive,
      ),
    );
  }
}
