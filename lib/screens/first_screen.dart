import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:indulge/screens/signin_screen.dart';

import 'package:indulge/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'interest_screens.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(113, 65, 220, 1),
          Color.fromRGBO(81, 36, 178, 1),
        ])),
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            top: h * 0.04,
            left: w * 0.04,
            right: w * 0.04,
          ),
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/Group 9965 (1).svg',
              ),
              FutureBuilder(
                future: Future.delayed(const Duration(seconds: 2)),
                builder: (c, s) => s.connectionState == ConnectionState.done
                    ? Positioned(
                        top: h * 0.15,
                        left: w * 0.25,
                        right: w * 0.25,
                        child: Image.asset(
                          'assets/Group 6275@2x.png',
                          width: w * 0.6,
                          height: h * 0.2,
                        ),
                      )
                    : SizedBox.shrink(),
              ),
              FutureBuilder(
                future: Future.delayed(const Duration(seconds: 4)),
                builder: (c, s) => s.connectionState == ConnectionState.done
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: SvgPicture.asset(
                          'assets/Group 12016.svg',
                          height: w * 0.84,
                          width: w * 0.3,
                        ))
                    : SizedBox.shrink(),
              ),
              FutureBuilder(
                future: Future.delayed(const Duration(seconds: 3)),
                builder: (c, s) => s.connectionState == ConnectionState.done
                    ? Padding(
                        padding: EdgeInsets.only(
                            top: h / 1.8, right: w / 8, left: w / 8),
                        child: simpleButton2('Let\'s Get Started', context, () {
                          Get.to(() => SignIn_Screen());
                        }),
                      )
                    : SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
