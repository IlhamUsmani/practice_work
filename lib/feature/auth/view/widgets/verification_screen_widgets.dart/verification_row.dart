import 'package:flutter/material.dart';
import 'package:practice_work/common_widgets/textfield.dart';
import 'package:practice_work/core/constants/screen_constants.dart';

import 'package:practice_work/screen_size.dart';

class VerificationCodeRow extends StatelessWidget {
  const VerificationCodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < 4; i++)
          VerificationBox(
            controller: controller,
          ),
      ],
    );
  }
}

class VerificationBox extends StatelessWidget {
  const VerificationBox({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: SizedBox(
        width: ScreenSize.width * zeroPointOneFive,
        height: ScreenSize.height * 0.1,
        child: CustomTextField(
          textAlignment: TextAlign.center,
          text: '1',
          height: ScreenSize.height * zeroPointOne,
        ),
      ),
    );
  }
}
