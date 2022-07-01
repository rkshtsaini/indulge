import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:indulge/screens/support.dart';
import 'package:indulge/screens/welcome_screen.dart';
import 'package:indulge/widgets/widgets.dart';

import '../widgets/style.dart';

class SignIn_Screen extends StatefulWidget {
  const SignIn_Screen({Key? key}) : super(key: key);

  @override
  State<SignIn_Screen> createState() => _SignIn_ScreenState();
}

class _SignIn_ScreenState extends State<SignIn_Screen> {
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
              Positioned(
                top: h * 0.12,
                left: w * 0.25,
                right: w * 0.25,
                child: Image.asset(
                  'assets/Group 6274@2x.png',
                  width: w * 0.5,
                  height: h * 0.1,
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                    'assets/Group 12016.svg',
                    height: w * 0.84,
                    width: w * 0.3,
                  )),
              Padding(
                padding: EdgeInsets.only(top: h / 3.5),
                child: FutureBuilder(
                  future: Future.delayed(const Duration(seconds: 1)),
                  builder: (c, s) => s.connectionState == ConnectionState.done
                      ? Column(
                          children: [
                            authButtons('Sign in with facebook',
                                'assets/facebook.svg', context, () {}),
                            authButtons2('Sign in with google',
                                'assets/Group 12022.svg', context, () {}),
                            authButtons3('Sign in number/ email',
                                'assets/contact.svg', context, () {
                              Get.to(
                                () => const Welcome(),
                              );
                            }),
                            authButtons4('Sign in with apple',
                                'assets/apple-black-logo.svg', context, () {}),
                          ],
                        )
                      : Container(),
                ),
              ),
              Positioned(
                top: h / 1.5,
                // bottom: w / 1.8,
                left: h / 8,
                right: h / 8,
                child: TextButton(
                    onPressed: () {
                      Get.to(
                        () => const Support(),
                      );
                    },
                    child: Text(
                      'Trouble siging in?',
                      style: whiteExtraLight13,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
