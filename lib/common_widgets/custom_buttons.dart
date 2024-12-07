import 'package:flutter/material.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/string_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.image});

  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(
          Size(ScreenSize.width * zeroPointZeroSeven,
              ScreenSize.height * zeroPointZeroSeven),
        ),
        shape: const WidgetStatePropertyAll(CircleBorder()),
        backgroundColor: WidgetStatePropertyAll(color),
      ),
      onPressed: () {},
      label: SizedBox(
        width: ScreenSize.width * zeroPointZeroFive,
        child: Image.asset(image),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomButton(color: white, image: share),
      CustomButton(color: darkBlue, image: facebook),
      CustomButton(color: darkBlue, image: linkedin),
      CustomButton(color: lightGreen, image: whatsapp),
      CustomButton(color: red, image: instagram),
    ]);
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.text, this.elevation});
  final String text;

  final WidgetStatePropertyAll<double>? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: elevation,
        minimumSize: WidgetStatePropertyAll(Size(
          ScreenSize.width * zeroPointSix,
          ScreenSize.height * zeroPointZeroEight,
        )),
        backgroundColor: const WidgetStatePropertyAll(lightGreen),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      ),
      onPressed: () {},
      child: Text(text, style: const TextStyle(color: white)),
    );
  }
}
