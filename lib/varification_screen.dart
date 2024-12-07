import 'package:flutter/material.dart';
import 'package:practice_work/common_widgets/custom_text.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/common_widgets/toprow.dart';
import 'package:practice_work/string_constants.dart';
import 'package:practice_work/verification_button_row.dart';

import 'package:practice_work/verification_row.dart';

class VarificationScreen extends StatelessWidget {
  const VarificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SigninToprow(),
            const Spacer(),
            const Heading(text: verification),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: ScreenSize.width * zeroPointEightEight,
                child: const CustomRichText(
                  firstText: verifyText,
                  secondText: emailAndPhone,
                  left: 0,
                ),
              ),
            ),
            const Expanded(flex: 3, child: VerificationCodeRow()),
            const Expanded(flex: 1, child: VerificationButtonRow())
          ],
        ),
      ),
    );
  }
}
