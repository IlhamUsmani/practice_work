import 'package:flutter/material.dart';
import 'package:practice_work/string_constants.dart';

class VerificationButtonRow extends StatelessWidget {
  const VerificationButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        VerificationButtons(
          color: lightestGrey,
          text: resend,
          textColor: black,
        ),
        const VerificationButtons(
          color: lightGreen,
          text: verify,
          textColor: white,
        ),
      ],
    );
  }
}

class VerificationButtons extends StatelessWidget {
  const VerificationButtons(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor});
  final Color color;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(Size(
            200,
            50,
          )),
          shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
          backgroundColor: WidgetStatePropertyAll(color),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ));
  }
}
