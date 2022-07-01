import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../dateformatHelper.dart';
import '../widgets/widgets.dart';
import 'identify_screen.dart';

class DateofBirth extends StatefulWidget {
  const DateofBirth({Key? key}) : super(key: key);

  @override
  State<DateofBirth> createState() => _DateofBirthState();
}

class _DateofBirthState extends State<DateofBirth> {
  String age = "0";
  String dob = "";
  var dd = TextEditingController();
  var mm = TextEditingController();
  var yyyy = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(64, 21, 162, 1),
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
                                color: const Color.fromRGBO(64, 21, 162, 1),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(w / 6))),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(64, 21, 162, 1),
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
                                  'What’s your date of birth?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: w / 17,
                                      fontFamily: 'Navigo'),
                                ),
                                spacer(context),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                          child: TextField(
                                            autofocus: true,
                                            maxLength: 2,
                                            onChanged: (val) {
                                              if (val.length == 2) {
                                                FocusScope.of(context)
                                                    .nextFocus();
                                              }
                                            },
                                            controller: dd,
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(
                                                counterText: "",
                                                hintText: "DD"),
                                            style: TextStyle(
                                                color: const Color.fromRGBO(
                                                    175, 175, 175, 1),
                                                fontSize: w / 18),
                                            textAlign: TextAlign.center,
                                          )),
                                      Text(
                                        "/",
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                175, 175, 175, 1),
                                            fontSize: w / 18),
                                      ),
                                      SizedBox(
                                          width: w / 4,
                                          child: TextField(
                                            onChanged: (val) {
                                              if (val.length == 2) {
                                                FocusScope.of(context)
                                                    .nextFocus();
                                              } else if (val.isEmpty) {
                                                FocusScope.of(context)
                                                    .previousFocus();
                                              }
                                            },
                                            maxLength: 2,
                                            autofocus: false,
                                            controller: mm,
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,
                                            decoration: const InputDecoration(
                                                counterText: "",
                                                hintText: "MM"),
                                            style: TextStyle(
                                                color: const Color.fromRGBO(
                                                    175, 175, 175, 1),
                                                fontSize: w / 18),
                                          )),
                                      Text(
                                        "/",
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                175, 175, 175, 1),
                                            fontSize: w / 18),
                                      ),
                                      SizedBox(
                                          width: w / 4,
                                          child: TextField(
                                            autofocus: false,
                                            maxLength: 4,
                                            controller: yyyy,
                                            onChanged: (val) {
                                              if (val.length >= 4) {
                                                setState(() {
                                                  print(dd.text +
                                                      "-" +
                                                      mm.text +
                                                      "-" +
                                                      yyyy.text);
                                                  age = getDOB(dd.text +
                                                      "-" +
                                                      mm.text +
                                                      "-" +
                                                      yyyy.text);
                                                  //print("Age $currentAge");
                                                });
                                                FocusScope.of(context)
                                                    .unfocus();
                                              } else if (val.isEmpty) {
                                                FocusScope.of(context)
                                                    .previousFocus();
                                              }
                                            },
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(
                                                counterText: "",
                                                hintText: "YYYY"),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: const Color.fromRGBO(
                                                    175, 175, 175, 1),
                                                fontSize: w / 18),
                                          )),
                                    ],
                                  ),
                                ),
                                spacer(context),
                                spacer(context),
                                Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        'Your age is',
                                        style: TextStyle(
                                            fontSize: w / 25,
                                            color: const Color.fromRGBO(
                                                114, 114, 114, 1)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: w / 50,
                                    ),
                                    Center(
                                      child: Text(
                                        age,
                                        style: TextStyle(
                                            fontSize: w / 15,
                                            color: const Color.fromRGBO(
                                                74, 20, 140, 1)),
                                      ),
                                    )
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
                          flex: 4,
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
                  bottom: h / 1.53,
                  child: Padding(
                    padding: EdgeInsets.only(left: w / 13),
                    child: SvgPicture.asset(
                      'assets/Group 12261.svg',
                      height: h / 3.6,
                      fit: BoxFit.contain,
                    ),
                  )),
              Positioned(
                left: w / 2.8,
                right: w / 4.1,
                bottom: h / 1.53,
                child: SvgPicture.asset(
                  'assets/Group 12193.svg',
                  fit: BoxFit.contain,
                  height: h / 4.3,
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
                            builder: (context) => const IdentifyScreen(),
                          ));
                    }),
                  )),
            ],
          ),
        ));
  }
}
