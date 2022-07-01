import 'dart:ffi';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:indulge/screens/first_screen.dart';

import '../data/controller/auth_controller.dart';
import '../widgets/style.dart';
import '../widgets/widgets.dart';
import 'otp_screen.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                                    'Create Account',
                                    style: blackMedium25,
                                  ),
                                ),
                                spacer2(context),
                                Text(
                                  'Join the Indulge Community.',
                                  style: greyRegular13,
                                ),
                                spacer(context),
                                Form(
                                    key: formKey,
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Container(
                                            width: w * 0.74,
                                            height: h * 0.062,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 10,
                                                    offset: Offset(0, 3),
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.2))
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
                                                controller:
                                                    Get.find<AuthController>()
                                                        .signUpEmailController,
                                                validator: (email) =>
                                                    email != null &&
                                                            !EmailValidator
                                                                .validate(email)
                                                        ? "Enter a Valid Email"
                                                        : null,
                                                textAlign: TextAlign.start,
                                                decoration: InputDecoration(
                                                  hintText: "Email",
                                                  hintStyle: grey2Regular13,
                                                  fillColor: Colors.grey,
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder:
                                                      InputBorder.none,
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
                                                    Color.fromRGBO(
                                                        170, 213, 233, 1),
                                                    Color.fromRGBO(
                                                        97, 54, 193, 1),
                                                  ])),
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
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.2))
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
                                                controller:
                                                    Get.find<AuthController>()
                                                        .loginController,
                                                validator: (value) =>
                                                    validatePhone(value),
                                                textAlign: TextAlign.start,
                                                decoration: InputDecoration(
                                                  hintText: "Phone Number",
                                                  hintStyle: grey2Regular13,
                                                  fillColor: Colors.grey,
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder:
                                                      InputBorder.none,
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
                                                    Color.fromRGBO(
                                                        170, 213, 233, 1),
                                                    Color.fromRGBO(
                                                        97, 54, 193, 1),
                                                  ])),
                                        ),
                                      ],
                                    )),
                                spacer(context),
                                simpleButton('Sign Up', context, () {
                                  final form = formKey.currentState!;
                                  if (form.validate()) {
                                    final email = Get.find<AuthController>()
                                        .signUpEmailController
                                        .text;
                                    print(email);
                                  }
                                  ;
                                  Get.find<AuthController>().signup();
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
            ],
          ),
        ),
      ),
    );
  }
}

String? validatePhone(String? value) {
  // String pattern = r'/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/';
  // RegExp regex = RegExp(pattern);
  if (value!.length == 0) {
    return 'Please enter mobile number';
  } else if (value.length > 10 || value.length < 10) {
    return "Please enter valid mobile number";
  } else {
    return null;
  }
}
