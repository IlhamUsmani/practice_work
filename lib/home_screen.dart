import 'package:flutter/material.dart';
import 'package:practice_work/botton_nevigation.dart';
import 'package:practice_work/common_widgets/home_screen_card_row.dart';
import 'package:practice_work/home_screen_progessbar.dart';
import 'package:practice_work/home_screen_two_containers.dart';
import 'package:practice_work/oval_shape.dart';
import 'package:practice_work/screen_constants.dart';
import 'package:practice_work/screen_size.dart';
import 'package:practice_work/string_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'Threefold innovation: economic',
      'empowerment, reducing carbon',
      'emissions, and raising awareness',
    ];
    return Scaffold(
        bottomNavigationBar: const BottomNavigation(),
        body: SafeArea(
          child: SingleChildScrollView(
            primary: false,
            child: SizedBox(
              height: ScreenSize.height * 1.28,
              width: ScreenSize.width,
              child: Stack(
                children: [
                  Positioned(
                      top: ScreenSize.height * zeroPointZeroTwoZero,
                      left: ScreenSize.width * zeroPointZeroThreeZero,
                      child: Icon(
                        Icons.menu,
                        size: ScreenSize.height * zeroPointZeroFourZero,
                      )),
                  Positioned(
                    left: ScreenSize.width * zeroPointOneTwo,
                    top: ScreenSize.height * zeroPointZeroTwoFive,
                    child: Text(
                      'Hi, Zohaib Hassan',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenSize.height * zeroPointZeroTwoZero,
                          color: black),
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.height * zeroPointZeroSeven,
                    left: ScreenSize.width * zeroPointOne,
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: lightestGreen),
                      child: Row(
                        children: [
                          Icon(
                            size: ScreenSize.height * zeroPointZeroTwoZero,
                            Icons.verified,
                            color: darkGreen,
                          ),
                          Text(
                            'Verified',
                            style: TextStyle(
                                fontSize:
                                    ScreenSize.height * zeroPointZeroOneFive),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: ScreenSize.width * 0.85,
                      top: ScreenSize.height * zeroPointZeroTwoZero,
                      child: Icon(Icons.notifications,
                          size: ScreenSize.height * zeroPointZeroFive)),
                  Positioned(
                    left: ScreenSize.width * 0.903,
                    top: ScreenSize.height * 0.007,
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: red),
                      child: Text('1',
                          style: TextStyle(
                              color: white,
                              fontSize: ScreenSize.height * 0.008)),
                    ),
                  ),
                  Positioned(
                      top: ScreenSize.height * zeroPointFourFive,
                      height: ScreenSize.height * zeroPointFourFive,
                      width: ScreenSize.width * 0.97,
                      child: Container(
                        color: lightestGrey,
                        padding: const EdgeInsets.all(10),
                        child: Stack(children: [
                          Positioned(
                            top: ScreenSize.height * zeroPointZeroTwoZero,
                            child: Image.asset('assets/images/homeImage.png'),
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
                                    'My Tree Pool',
                                    style: TextStyle(
                                        color: darkGreen,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: ScreenSize.height * zeroPointThreeOne,
                            width: ScreenSize.width * zeroPointFourFive,
                            left: ScreenSize.width * zeroPointZeroSeven,
                            height: ScreenSize.height * zeroPointOne,
                            child: CustomPaint(
                              size: const Size(300, 200),
                              painter: OvalPainter(),
                              child: const Center(
                                child: Text(
                                  '10,000 Trees',
                                  style: TextStyle(
                                    color: darkGreen,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: ScreenSize.height * 0.03,
                            left: ScreenSize.width * 0.58,
                            child: HomeScreenContainer(
                              color: darkGreen,
                              child: Icon(
                                Icons.add,
                                size: ScreenSize.height * 0.05,
                                color: white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: ScreenSize.height * zeroPointZeroOne,
                            left: ScreenSize.width * 0.715,
                            width: ScreenSize.width * zeroPointTwo,
                            height: ScreenSize.height * zeroPointTwo,
                            child: HomeScreenContainer(
                                color: lightGreen,
                                child: Center(
                                  child: SizedBox(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('Add',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: white,
                                                fontSize:
                                                    ScreenSize.height * 0.012)),
                                        Text(
                                          'Green Project',
                                          style: TextStyle(
                                              color: white,
                                              fontWeight: FontWeight.bold,
                                              fontSize:
                                                  ScreenSize.height * 0.012),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                          Positioned(
                            top: ScreenSize.height * 0.08,
                            left: ScreenSize.width * 0.27,
                            child: const HomeScreenProgessBar(),
                          )
                        ]),
                      )),
                  Positioned(
                    top: ScreenSize.height * 0.17,
                    height: ScreenSize.height * 0.3,
                    width: ScreenSize.width * 0.95,
                    left: ScreenSize.width * 0.02,
                    child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: lightestGrey,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
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
                                text: 'Carbon Credit Available',
                                containerColor: darkGreen,
                                flex: 3,
                                textFlex: 3,
                                padding: 0,
                              ),
                              HomeScreenCardRow(
                                text: 'Carbon Credit Sold',
                                containerColor: darkBlue,
                                flex: 4,
                                padding: 17,
                                textFlex: 3,
                              ),
                              HomeScreenCardRow(
                                textFlex: 5,
                                padding: 17,
                                text: 'Carbon Credit Earned',
                                containerColor: lightGreen,
                                flex: 7,
                              ),
                            ])),
                  ),
                  Positioned(
                    top: ScreenSize.height * 0.15,
                    left: ScreenSize.width * 0.05,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color.fromARGB(255, 4, 28, 66)),
                      child: Text(
                        'Account Summary',
                        style: TextStyle(
                            color: white,
                            fontSize: ScreenSize.height * 0.015,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Positioned(
                      top: ScreenSize.height * 0.95,
                      height: ScreenSize.height * 0.33,
                      width: ScreenSize.width,
                      child: Image.asset(
                          'assets/images/homescreen_lastImage.png')),
                  Positioned(
                    top: ScreenSize.height * 1,
                    left: ScreenSize.width * 0.02,
                    child: Column(
                      children: [
                        for (int i = 0; i < 3; i++)
                          Text(
                            list[i],
                            style: TextStyle(
                                color: white,
                                fontSize: ScreenSize.height * 0.016),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
