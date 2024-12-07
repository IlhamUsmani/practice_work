import 'package:flutter/material.dart';
import 'package:practice_work/common_widgets/custom_buttons.dart';
import 'package:practice_work/signin_screen_widgets/list_of_textfield.dart';
import 'package:practice_work/common_widgets/custom_text.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/common_widgets/toprow.dart';
import 'package:practice_work/string_constants.dart';
import 'package:practice_work/signin_screen_widgets/term_condition_row.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ScreenSize.height * zeroPointZeroFive),
            const SigninToprow(),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            const Heading(text: signin),
            const ListOfTextfield(),
            SizedBox(
                height: ScreenSize.height * zeroPointZeroFive,
                child: const TermConditionRow()),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            const CustomElevatedButton(
              text: next,
              elevation: WidgetStatePropertyAll(10),
            ),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroOne,
            ),
            const CustomRichText(
              left: zeroPointNineFive,
              firstText: accountText,
              secondText: signin,
            ),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
          ],
        ),
      ),
    );
  }
}
