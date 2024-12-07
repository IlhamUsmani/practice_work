import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/screen_constants.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/screen_size.dart';

class SideContainers extends StatelessWidget {
  const SideContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * zeroPointOne,
      width: ScreenSize.width,
      child: Center(
        child: Stack(
          children: [
            Positioned(
                left: ScreenSize.width * zeroPointThree,
                bottom: ScreenSize.height * -zeroPointOne,
                child: const SideContainer(color: darkGreen)),
            Positioned(
                left: ScreenSize.width * zeroPointSix,
                bottom: ScreenSize.height * -zeroPointOneFive,
                child: SideContainer(
                  color: lightGreen,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 120, top: 100),
                      child: SizedBox(
                          height: ScreenSize.height * zeroPointOneTwo,
                          child: Image.asset(plant, fit: BoxFit.fill)),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class SideContainer extends StatelessWidget {
  const SideContainer({super.key, required this.color, this.child});
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width * zeroPointSeven,
      height: ScreenSize.height * zeroPointSeven,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: child,
    );
  }
}
