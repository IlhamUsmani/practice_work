import 'package:flutter/material.dart';
import 'package:practice_work/common_widgets/home_screen_card_row.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: lightestGrey,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(zeroPointThree),
              spreadRadius: 8,
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeScreenCardRow(
                text: avalible,
                containerColor: darkGreen,
                flex: 3,
                textFlex: 3,
                padding: 0,
              ),
              HomeScreenCardRow(
                text: sold,
                containerColor: darkBlue,
                flex: 4,
                padding: 17,
                textFlex: 3,
              ),
              HomeScreenCardRow(
                textFlex: 5,
                padding: 17,
                text: earned,
                containerColor: lightGreen,
                flex: 7,
              ),
            ]));
  }
}
