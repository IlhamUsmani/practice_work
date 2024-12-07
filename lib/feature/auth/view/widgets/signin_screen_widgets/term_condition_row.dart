import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/screen_size.dart';

class TermConditionRow extends StatefulWidget {
  const TermConditionRow({super.key});

  @override
  State<TermConditionRow> createState() => _TermConditionRowState();
}

class _TermConditionRowState extends State<TermConditionRow> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Checkbox(
              checkColor: lightGrey,
              value: check,
              onChanged: (value) {
                setState(() {
                  check = !check;
                });
              }),
        ),
        Text(
          termsAndCondition,
          style: TextStyle(
            fontSize: ScreenSize.height * zeroPointZeroOneFive,
          ),
        ),
      ],
    );
  }
}
