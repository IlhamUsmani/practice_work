import 'package:flutter/material.dart';
import 'package:practice_work/signup_screen_widgets.dart/dropdown_widget.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/string_constants.dart';
import 'package:practice_work/textfield.dart';

class ListOfTextfield extends StatelessWidget {
  const ListOfTextfield({super.key});

  @override
  Widget build(BuildContext context) {
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
                    flex: 4, child: CustomTextField(text: textList[index])),
              ],
            ),
          );
        });
  }
}
