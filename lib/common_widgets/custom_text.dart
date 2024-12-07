import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/screen_size.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.left});
  final String firstText, secondText;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft + Alignment(left, 0),
      child: RichText(
          text: TextSpan(children: <TextSpan>[
        TextSpan(text: firstText, style: const TextStyle(color: Colors.black)),
        TextSpan(
            text: secondText,
            style: const TextStyle(
                color: lightGreen, fontWeight: FontWeight.bold)),
      ])),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: ScreenSize.height * zeroPointZeroThreeZero,
            fontWeight: FontWeight.bold));
  }
}
