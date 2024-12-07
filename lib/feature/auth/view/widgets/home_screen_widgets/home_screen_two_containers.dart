import 'package:flutter/material.dart';
import 'package:practice_work/core/constants/screen_constants.dart';

import 'package:practice_work/screen_size.dart';

class HomeScreenContainer extends StatelessWidget {
  const HomeScreenContainer(
      {super.key, required this.child, required this.color});
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width * zeroPointOneSeven,
      height: ScreenSize.height * zeroPointOneSeven,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: child,
    );
  }
}
