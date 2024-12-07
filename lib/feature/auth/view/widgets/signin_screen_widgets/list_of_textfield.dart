import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/feature/auth/view/widgets/signup_screen_widgets.dart/dropdown_widget.dart';
import 'package:practice_work/feature/auth/view_model/auth_controller.dart';
import 'package:practice_work/screen_size.dart';

import '../../../../../common_widgets/textfield.dart';

class ListOfTextfield extends ConsumerWidget {
  const ListOfTextfield({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final authController = ref.read(authControllerProvider.notifier);
    List<String> textList = [
      firstName,
      lastName,
      '$email*',
      phoneNumber,
      address,
      gender,
      confrimPassword,
      confrimPassword
    ];

    List<Icon> iconList = const [
      Icon(Icons.visibility_off_outlined),
      Icon(Icons.remove_red_eye_rounded),
    ];

    final textFieldControllers = [
      authController.firstNameController,
      authController.lastNameController,
      authController.emailController,
      authController.phoneController,
      authController.addressController,
      authController.genderController,
      authController.passwordController,
      authController.confirmPasswordController
    ];

    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: textList.length,
        itemBuilder: (context, index) {
          if (index == 5) {
            return SizedBox(
              height: ScreenSize.height * zeroPointOne,
              child: Column(
                children: [
                  const Spacer(flex: 1),
                  Expanded(
                      flex: 4,
                      child: CustomTextField(
                        text: textList[index],
                        controller: textFieldControllers[index],
                        icon: const DropdownWidget(),
                      )),
                ],
              ),
            );
          }
          if (index > 5) {
            return SizedBox(
              height: ScreenSize.height * zeroPointOne,
              child: Column(
                children: [
                  const Spacer(flex: 1),
                  Expanded(
                      flex: 4,
                      child: CustomTextField(
                        controller: textFieldControllers[index],
                        text: textList[index],
                        icon: iconList[index - 6],
                      )),
                ],
              ),
            );
          }
          return SizedBox(
            height: ScreenSize.height * zeroPointOne,
            child: Column(
              children: [
                const Spacer(flex: 1),
                Expanded(
                    flex: 4,
                    child: CustomTextField(
                      text: textList[index],
                      controller: textFieldControllers[index],
                    )),
              ],
            ),
          );
        });
  }
}
