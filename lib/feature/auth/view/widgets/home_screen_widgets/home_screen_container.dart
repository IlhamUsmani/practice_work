import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/screen_size.dart';

class HomeScreenStackContainer extends StatelessWidget {
  const HomeScreenStackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: lightestGrey,
        padding: const EdgeInsets.all(10),
        child: Stack(children: [
          Positioned(
            top: ScreenSize.height * zeroPointZeroTwoZero,
            child: Image.asset(homeImage),
          ),
          Positioned(
              top: ScreenSize.height * zeroPointTwoFive,
              height: ScreenSize.height * zeroPointOne,
              width: ScreenSize.width * zeroPointSix,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    const BoxShadow(
                      color: lightGrey,
                      offset: Offset(0, 2),
                    ),
                    BoxShadow(
                      color: Colors.grey.shade50,
                      spreadRadius: -12.0,
                      offset: const Offset(-12, 0),
                      blurRadius: 12.0,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      spreadRadius: -3.0,
                      offset: Offset(0, 5),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text(
                      treePool,
                      style: TextStyle(
                          color: darkGreen, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ))
        ]));
  }
}
