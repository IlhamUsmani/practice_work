import 'package:flutter/material.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/string_constants.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
    bool check = false;
    return Row(
      children: [
        const Spacer(flex: 1),
        Expanded(
          flex: 2,
          child: Text(rememberText,
              style: TextStyle(
                fontSize: ScreenSize.height * zeroPointZeroOne,
              )),
        ),
        Expanded(
          flex: 1,
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Checkbox(
                value: check,
                onChanged: (value) {
                  setState(() {
                    check = !check;
                  });
                });
          }),
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: 2,
          child: TextButton(
              onPressed: () {},
              child: Text(
                forgetText,
                style: TextStyle(
                  color: darkBlue,
                  fontSize: ScreenSize.height * zeroPointZeroOne,
                ),
              )),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
