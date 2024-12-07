import 'package:flutter/material.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/string_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.text,
      this.icon,
      this.height = 70,
      this.width = 360});
  final String text;
  final Widget? icon;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(color: lightGrey));
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              color: Colors.grey.shade600,
              fontSize: ScreenSize.height * zeroPointZeroOneSeven),
          suffixIcon: icon,
          border: border,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}
