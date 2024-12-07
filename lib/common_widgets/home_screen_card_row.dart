import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/screen_size.dart';

class HomeScreenCardRow extends StatelessWidget {
  const HomeScreenCardRow({
    super.key,
    required this.flex,
    required this.text,
    required this.textFlex,
    required this.containerColor,
    required this.padding,
  });
  final String text;
  final Color containerColor;
  final int flex, textFlex;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: textFlex,
          child: Text(
            text,
            style: TextStyle(
              color: darkGreen,
              fontSize: ScreenSize.height * 0.014,
            ),
          ),
        ),
        Expanded(
          flex: flex,
          child: Padding(
            padding: EdgeInsets.only(left: padding),
            child: Container(
              height: ScreenSize.height * zeroPointZeroSeven,
              color: containerColor,
              child: Center(
                child: Text(
                  '20,000(tons of co2)',
                  style: TextStyle(
                    fontSize: ScreenSize.height * 0.012,
                    color: white,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
