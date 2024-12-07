import 'package:flutter/material.dart';
import 'package:practice_work/common_widgets/custom_buttons.dart';
import 'package:practice_work/signup_screen_widgets.dart/forget_passward_row.dart';
import 'package:practice_work/common_widgets/custom_text.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/signup_screen_widgets.dart/side_containers.dart';
import 'package:practice_work/string_constants.dart';
import 'package:practice_work/common_widgets/textfield.dart';
import 'package:practice_work/signup_screen_widgets.dart/welcomeText.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController dummyController = TextEditingController();
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
              controller: dummyController,
              height: ScreenSize.height * zeroPointOne,
              text: email,
            ),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroTwoZero,
            ),
            CustomTextField(
                controller: dummyController,
                height: ScreenSize.height * zeroPointOne,
                text: password,
                icon: const Icon(
                  Icons.remove_red_eye,
                  color: lightGrey,
                )),
            const RowView(),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroFive,
            ),
            const CustomElevatedButton(text: signup),
            SizedBox(
              height: ScreenSize.height * zeroPointZeroTwoZero,
            ),
            const CustomRichText(
              firstText: carbonCapText,
              secondText: signup,
              left: zeroPointFour,
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
