import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indulge/widgets/widgets.dart';

import 'dob_screen.dart';

class Name_Screen extends StatelessWidget {
  const Name_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(68, 22, 169, 1),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: h / 5,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  height: h / 1.6,
                  width: w,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          width: w,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(68, 22, 169, 1),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(w / 6))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(68, 22, 169, 1),
                          ),
                          child: Container(
                              width: w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(w / 6),
                                  bottomLeft: Radius.circular(w / 6),
                                  bottomRight: Radius.circular(w / 6),
                                ),
                              ),
                              child: null),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: h / 11,
                left: w / 50,
                right: w / 50,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: w / 20),
                  width: w * 0.9,
                  height: h * 0.01,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(97, 54, 193, 1),
                                Color.fromRGBO(7, 211, 223, 1),
                              ]),
                            ),
                          )),
                      Expanded(
                          flex: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: h / 1.54,
                  child: Padding(
                    padding: EdgeInsets.only(left: w / 13),
                    child: SvgPicture.asset(
                      'assets/Group 12261.svg',
                      height: h / 3.5,
                      fit: BoxFit.contain,
                    ),
                  )),
              Positioned(
                left: w / 2.2,
                right: w / 5,
                bottom: h / 1.55,
                child: SvgPicture.asset(
                  'assets/Group 12070.svg',
                  height: h / 5,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: w / 8, right: w / 8, bottom: w / 8),
                    child: simpleButton('Continue', context, () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const DateofBirth(),
                          ));
                    }),
                  )),
            ],
          ),
        ));
  }
}
