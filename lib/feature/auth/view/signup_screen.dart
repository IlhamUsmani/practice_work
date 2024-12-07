import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_work/common_widgets/custom_buttons.dart';

import 'package:practice_work/common_widgets/custom_text.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/feature/auth/view/widgets/signin_screen_widgets/list_of_textfield.dart';
import 'package:practice_work/feature/auth/view/widgets/signin_screen_widgets/term_condition_row.dart';
import 'package:practice_work/feature/auth/view_model/auth_controller.dart';

import 'package:practice_work/screen_size.dart';
import 'package:practice_work/common_widgets/toprow.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({super.key});
  static const pageName = '/signup-screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider = ref.read(authControllerProvider.notifier);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ScreenSize.height * zeroPointZeroFive),
            const SigninToprow(),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            const Heading(text: signup),
            const ListOfTextfield(),
            SizedBox(
                height: ScreenSize.height * zeroPointZeroFive,
                child: const TermConditionRow()),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            CustomElevatedButton(
              onPressed: () {
                provider.requestOtp(context);
              },
              text: next,
              elevation: const WidgetStatePropertyAll(10),
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
