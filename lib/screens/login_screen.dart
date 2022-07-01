import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indulge/data/controller/auth_controller.dart';
import 'package:indulge/data/repos/auth_repo.dart';

import 'package:indulge/screens/first_screen.dart';

import '../widgets/style.dart';
import '../widgets/widgets.dart';
import 'otp_screen.dart';
import 'signup_screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    final loginTextController = Get.find<AuthController>().loginController;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(73, 25, 181, 1),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: w / 10.0),
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
                                        'assets/Group 12057.svg'),
                                  ),
                                ),
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
                          child: Padding(
                            padding: EdgeInsets.only(left: w / 8, right: w / 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Hello Again!',
                                    style: blackMedium25,
                                  ),
                                ),
                                spacer2(context),
                                Text(
                                  'Welcome back you\'ve been missed!',
                                  style: greyRegular13,
                                ),
                                spacer(context),
                                Container(
                                  child: Container(
                                    width: w * 0.74,
                                    height: h * 0.062,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 10,
                                            offset: Offset(0, 3),
                                            color: Color.fromRGBO(0, 0, 0, 0.1))
                                      ],
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
                                      child: TextFormField(
                                        controller: loginTextController,
                                        textAlign: TextAlign.start,
                                        decoration: InputDecoration(
                                          hintText: "Phone Number/Email",
                                          hintStyle: grey2Regular13,
                                          fillColor: Colors.grey,
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  width: w * 0.85,
                                  height: h * 0.065,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(h / 20),
                                      gradient: const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color.fromRGBO(170, 213, 233, 1),
                                            Color.fromRGBO(97, 54, 193, 1),
                                          ])),
                                ),
                                spacer(context),
                                simpleButton('Sign In', context, () {
                                  Get.find<AuthController>().login();
                                  // loginTextController.clear();
                                })
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: whiteRegular13,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => SignUp_Screen());
                        loginTextController.clear();
                      },
                      child: Text('Sign Up', style: TextStyle(fontSize: 13))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
