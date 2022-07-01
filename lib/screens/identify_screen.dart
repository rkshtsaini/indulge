import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indulge/screens/intrest_screen.dart';

import '../widgets/widgets.dart';

class IdentifyScreen extends StatefulWidget {
  const IdentifyScreen({Key? key}) : super(key: key);

  @override
  State<IdentifyScreen> createState() => _IdentifyScreenState();
}

class _IdentifyScreenState extends State<IdentifyScreen> {
  var list = ["Man", "Woman", "Other"];
  var selected_index;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(61, 19, 155, 1),
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
                                color: const Color.fromRGBO(61, 19, 155, 1),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(w / 6))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(61, 19, 155, 1),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'How do you identify?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: w / 17,
                                      fontFamily: 'Navigo'),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: w / 15, right: w / 15),
                                    child: ListView.builder(
                                        itemCount: list.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: EdgeInsets.only(
                                                //top: MediaQuery.of(context).size.width / 8,
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    10,
                                                bottom: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    40,
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    10),
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selected_index = index;
                                                });
                                              },
                                              child: Container(
                                                padding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        30),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: w * 0.004,
                                                        color: selected_index ==
                                                                index
                                                            ? const Color
                                                                    .fromRGBO(
                                                                146, 42, 251, 1)
                                                            : const Color(
                                                                0xffC2C2C2)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            w / 10)),
                                                alignment: Alignment.center,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2,
                                                child: Text(
                                                  list[index],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: selected_index ==
                                                              index
                                                          ? const Color
                                                                  .fromRGBO(
                                                              74, 20, 140, 1)
                                                          : Colors.black,
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              20),
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                          flex: 5,
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
                  bottom: h / 1.55,
                  top: h / 20,
                  child: Padding(
                    padding: EdgeInsets.only(left: w / 13),
                    child: SvgPicture.asset(
                      'assets/Group 12261.svg',
                      height: w / 1.63,
                    ),
                  )),
              Positioned(
                left: w / 5,
                right: w / 7,
                bottom: h / 1.56,
                child: SvgPicture.asset(
                  'assets/Group 12052.svg',
                  height: w / 2.8,
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: w / 8, right: w / 8, bottom: w / 8),
                    child: simpleButton('Continue', context, () {
                      // Navigator.push(
                      //     context,
                      //     CupertinoPageRoute(
                      //       builder: (context) => IntrestedIn(),
                      //     ));
                    }),
                  )),
            ],
          ),
        ));
  }
}
