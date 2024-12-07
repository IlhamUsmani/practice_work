import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_work/common_widgets/custom_buttons.dart';
import 'package:practice_work/common_widgets/custom_text.dart';
import 'package:practice_work/common_widgets/toprow.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/feature/auth/view_model/auth_controller.dart';
import 'package:practice_work/feature/auth/view_model/auth_states.dart';
import 'package:practice_work/screen_size.dart';

import 'widgets/signin_screen_widgets/list_of_textfield.dart';
import 'widgets/signin_screen_widgets/term_condition_row.dart';

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
            Consumer(
              builder: (context, ref, child) {
                final state = ref.watch(authControllerProvider);
                if (state is AuthErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        state.message,
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
