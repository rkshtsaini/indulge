import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:indulge/screens/interest_screens.dart';
import 'package:indulge/screens/name_screen.dart';

import '../data/controller/auth_controller.dart';
import '../icons/my_flutter_app_icons.dart';
import '../widgets/style.dart';
import '../widgets/widgets.dart';

class Verify_Screen extends StatefulWidget {
  @override
  State<Verify_Screen> createState() => _Verify_ScreenState();
}

class _Verify_ScreenState extends State<Verify_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(71, 24, 175, 1),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: w / 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  height: h * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              padding: EdgeInsets.only(left: w / 10),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(68, 22, 169, 1),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(w / 8))),
                              child: Stack(
                                children: [
                                  SvgPicture.asset('assets/Group 12261.svg'),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: w / 8, top: w / 8),
                                      child: SvgPicture.asset(
                                          'assets/Group 12252.svg'),
                                    ),
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      height:
                                          MediaQuery.of(context).size.width /
                                              10,
                                      width:
                                          MediaQuery.of(context).size.width / 1,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                60),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Material(
                                                shadowColor: Color.fromRGBO(
                                                    0, 0, 0, 0.12),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            35),
                                                elevation: 2,
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              9.5,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              9,
                                                      child: Icon(
                                                        MyFlutterApp.group_5574,
                                                        color: Colors.black,
                                                        size: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            20,
                                                      )),
                                                )),
                                            Expanded(
                                              child: Text(
                                                'Verify',
                                                textAlign: TextAlign.center,
                                                style: whiteRegular20,
                                              ),
                                            ),
                                            SizedBox(
                                              width: w / 10,
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Color.fromRGBO(68, 22, 169, 1),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(w / 8),
                                bottomLeft: Radius.circular(w / 8),
                                bottomRight: Radius.circular(w / 8),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                spacer(context),
                                Center(
                                  child: Text(
                                    'Please Enter Verification Code',
                                    style: blackMedium20,
                                  ),
                                ),
                                spacer2(context),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                          text: "Code sent to ",
                                          children: [
                                            TextSpan(
                                              text: Get.find<AuthController>()
                                                  .loginController
                                                  .text,
                                              style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      7, 211, 223, 1),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Navigo'),
                                            )
                                          ]),
                                      style: blackRegular13,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                                spacer(context),
                                spacer(context),
                                Column(
                                  children: [
                                    Container(
                                      child: Container(
                                        width: w * 0.74,
                                        height: h * 0.062,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(h / 20),
                                          color: Colors.white,
                                        ),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: w * 0.02,
                                            right: w * 0.03,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              otpfield(context),
                                              const VerticalDivider(
                                                indent: 8,
                                                endIndent: 6,
                                                thickness: 1,
                                                color: Color.fromRGBO(
                                                    184, 184, 184, 1),
                                              ),
                                              otpfield(context),
                                              const VerticalDivider(
                                                indent: 8,
                                                endIndent: 6,
                                                thickness: 1,
                                                color: Color.fromRGBO(
                                                    184, 184, 184, 1),
                                              ),
                                              otpfield(context),
                                              const VerticalDivider(
                                                indent: 8,
                                                endIndent: 6,
                                                thickness: 1,
                                                color: Color.fromRGBO(
                                                    184, 184, 184, 1),
                                              ),
                                              otpfield(context),
                                            ],
                                          ),
                                        ),
                                      ),
                                      width: w * 0.75,
                                      height: h * 0.065,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(h / 20),
                                          gradient: const LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Color.fromRGBO(
                                                    170, 213, 233, 1),
                                                Color.fromRGBO(97, 54, 193, 1),
                                              ])),
                                    ),
                                    spacer(context),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: w / 8, right: w / 8),
                                      child:
                                          simpleButton('Verify', context, () {
                                        Get.find<AuthController>().verifyUser();
                                      }),
                                    ),
                                    spacer2(context),
                                    TextButton(
                                        onPressed: () {
                                          Get.find<AuthController>()
                                              .resendOTP();
                                        },
                                        child: Text(
                                          'Resend OTP',
                                          style: regular13,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //  Stack(
          //   children: [
          //     Positioned(
          //       top: h / 12,
          //       child: Container(
          //         decoration: const BoxDecoration(
          //           color: Colors.white,
          //         ),
          //         height: h / 1.5,
          //         width: w,
          //         child: Column(
          //           children: [
          //             Expanded(
          //               flex: 1,
          //               child: Container(
          //                 decoration: const BoxDecoration(
          //                   color: Colors.white,
          //                 ),
          //                 width: w,
          //                 child: Container(
          //                   decoration: BoxDecoration(
          //                       color: const Color.fromRGBO(71, 24, 175, 1),
          //                       borderRadius: BorderRadius.only(
          //                           bottomRight: Radius.circular(w / 6))),
          //                 ),
          //               ),
          //             ),
          //             Expanded(
          //               flex: 3,
          //               child: Container(
          //                 decoration: const BoxDecoration(
          //                   color: Color.fromRGBO(71, 24, 175, 1),
          //                 ),
          //                 child: Container(
          //                   decoration: BoxDecoration(
          //                     color: Colors.white,
          //                     borderRadius: BorderRadius.only(
          //                       topLeft: Radius.circular(w / 6),
          //                       bottomLeft: Radius.circular(w / 6),
          //                       bottomRight: Radius.circular(w / 6),
          //                     ),
          //                   ),
          //                   child: Padding(
          //                     padding:
          //                         EdgeInsets.only(left: w / 8, right: w / 8),
          //                     child: Column(
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       // crossAxisAlignment: CrossAxisAlignment.center,
          //                       children: [
          //                         spacer(context),
          //                         Center(
          //                           child: Text(
          //                             'Please Enter Verification Code',
          //                             style: TextStyle(
          //                                 fontWeight: FontWeight.w600,
          //                                 fontSize: w / 22,
          //                                 fontFamily: 'Navigo'),
          //                           ),
          //                         ),
          //                         spacer2(context),
          //                         Row(
          //                           mainAxisSize: MainAxisSize.min,
          //                           children: [
          //                             Text.rich(
          //                               TextSpan(
          //                                   text: "Code sent to ",
          //                                   children: [
          //                                     TextSpan(
          //                                       text: '9166585813',
          //                                       style: TextStyle(
          //                                           color: const Color.fromRGBO(
          //                                               7, 211, 223, 1),
          //                                           fontSize: w / 25,
          //                                           fontWeight: FontWeight.w400,
          //                                           fontFamily: 'Navigo'),
          //                                     )
          //                                   ]),
          //                               style: TextStyle(
          //                                   fontSize: w / 25,
          //                                   fontWeight: FontWeight.w400,
          //                                   fontFamily: 'Navigo'),
          //                               textAlign: TextAlign.justify,
          //                             ),
          //                           ],
          //                         ),
          //                         spacer(context),
          //                         spacer(context),
          //                         Column(
          //                           children: [
          //                             Container(
          //                               child: Container(
          //                                 width: w * 0.74,
          //                                 height: h * 0.062,
          //                                 decoration: BoxDecoration(
          //                                   borderRadius:
          //                                       BorderRadius.circular(h / 20),
          //                                   color: Colors.white,
          //                                 ),
          //                                 alignment: Alignment.center,
          //                                 child: Padding(
          //                                   padding: EdgeInsets.only(
          //                                     left: w * 0.02,
          //                                     right: w * 0.03,
          //                                   ),
          //                                   child: Row(
          //                                     mainAxisAlignment:
          //                                         MainAxisAlignment
          //                                             .spaceBetween,
          //                                     children: [
          //                                       otpfield(context),
          //                                       const VerticalDivider(
          //                                         indent: 8,
          //                                         endIndent: 6,
          //                                         thickness: 1,
          //                                         color: Color.fromRGBO(
          //                                             184, 184, 184, 1),
          //                                       ),
          //                                       otpfield(context),
          //                                       const VerticalDivider(
          //                                         indent: 8,
          //                                         endIndent: 6,
          //                                         thickness: 1,
          //                                         color: Color.fromRGBO(
          //                                             184, 184, 184, 1),
          //                                       ),
          //                                       otpfield(context),
          //                                       const VerticalDivider(
          //                                         indent: 8,
          //                                         endIndent: 6,
          //                                         thickness: 1,
          //                                         color: Color.fromRGBO(
          //                                             184, 184, 184, 1),
          //                                       ),
          //                                       otpfield(context),
          //                                     ],
          //                                   ),
          //                                 ),
          //                               ),
          //                               width: w * 0.85,
          //                               height: h * 0.065,
          //                               alignment: Alignment.center,
          //                               decoration: BoxDecoration(
          //                                   borderRadius:
          //                                       BorderRadius.circular(h / 20),
          //                                   gradient: const LinearGradient(
          //                                       begin: Alignment.centerLeft,
          //                                       end: Alignment.centerRight,
          //                                       colors: [
          //                                         Color.fromRGBO(
          //                                             170, 213, 233, 1),
          //                                         Color.fromRGBO(
          //                                             97, 54, 193, 1),
          //                                       ])),
          //                             ),
          //                             spacer(context),
          //                             simpleButton('Verify', context, () {
          //                               print('Button pressed');
          //                               Navigator.push(
          //                                   context,
          //                                   CupertinoPageRoute(
          //                                     builder: (context) =>
          //                                         const OnBoardScreen(),
          //                                   ));
          //                             }),
          //                             spacer2(context),
          //                             TextButton(
          //                                 onPressed: () {},
          //                                 child: const Text(
          //                                   'Resend OTP',
          //                                   style: TextStyle(
          //                                     color: Color.fromRGBO(
          //                                         255, 51, 102, 1),
          //                                   ),
          //                                 ))
          //                           ],
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Positioned(
          //         left: w / 20,
          //         right: w * 0.001,
          //         bottom: h / 1.55,
          //         child: SvgPicture.asset(
          //           'assets/Group 12261.svg',
          //           fit: BoxFit.contain,
          //           height: h / 3.5,
          //         )),
          //     Positioned(
          //       left: w / 2.5,
          //       right: w / 4.5,
          //       bottom: h / 1.75,
          //       child: SvgPicture.asset(
          //         'assets/Group 12252.svg',
          //         fit: BoxFit.contain,
          //         height: h / 3,
          //       ),
          //     ),
          //   ],
          // ),
        ));
  }
}
