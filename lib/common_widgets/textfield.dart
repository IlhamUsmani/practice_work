import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/string_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.text,
      this.icon,
      this.hintStyle = const TextStyle(color: darkGrey, fontSize: 12),
      this.height = 70,
      this.width = 360,
      required this.controller});
  final String text;
  final Widget? icon;
  final double height, width;
  final TextStyle? hintStyle;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: const BorderSide(color: lightGrey));
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: hintStyle,
          suffixIcon: icon,
          border: border,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}
