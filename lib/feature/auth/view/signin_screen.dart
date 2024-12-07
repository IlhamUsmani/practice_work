import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_work/common_widgets/custom_buttons.dart';

import 'package:practice_work/common_widgets/custom_text.dart';
import 'package:practice_work/common_widgets/textfield.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/feature/auth/view/signup_screen.dart';
import 'package:practice_work/feature/auth/view/widgets/signup_screen_widgets.dart/forget_passward_row.dart';
import 'package:practice_work/feature/auth/view/widgets/signup_screen_widgets.dart/side_containers.dart';
import 'package:practice_work/feature/auth/view/widgets/signup_screen_widgets.dart/welcomeText.dart';
import 'package:practice_work/feature/auth/view_model/auth_controller.dart';

import 'package:practice_work/screen_size.dart';

class SigninScreen extends ConsumerWidget {
  const SigninScreen({super.key});
  static const pageName = '/SigninScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authProvider = ref.read(authControllerProvider.notifier);

    ScreenSize(context);
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: ScreenSize.height * zeroPointTwoFive,
                child: const SideContainers()),
            const WelcomeText(),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            Align(
              alignment:
                  Alignment.centerLeft + const Alignment(zeroPointFour, 0),
              child: const Text(
                subtitle,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            const Heading(text: signup),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            CustomTextField(
              height: ScreenSize.height * zeroPointOne,
              text: email,
              controller: authProvider.emailController,
            ),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroTwoZero,
            ),
            CustomTextField(
                height: ScreenSize.height * zeroPointOne,
                text: password,
                controller: authProvider.passwordController,
                icon: const Icon(
                  Icons.remove_red_eye,
                  color: lightGrey,
                )),
            const RowView(),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            CustomElevatedButton(
              text: signin,
              onPressed: () {
                authProvider.login(context);
              },
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    carbonCapText,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenSize.height * zeroPointZeroOneFive),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignupScreen.pageName);
                    },
                    child: Text(signup,
                        style: TextStyle(
                            fontSize: ScreenSize.height * zeroPointZeroOneFive,
                            color: darkGreen)))
              ],
            ),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroThreeZero,
            ),
            SizedBox(
                height: ScreenSize.height * zeroPointOne,
                child: const ButtonRow()),
          ],
        ),
      ),
    );
  }
}
