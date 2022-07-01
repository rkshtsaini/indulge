import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indulge/icons/my_flutter_app_icons.dart';
import 'package:indulge/screens/login_screen.dart';

import '../widgets/style.dart';
import '../widgets/widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(63, 19, 164, 1),
                Color.fromRGBO(63, 19, 164, 1),
              ]),
          // image: DecorationImage(
          //     image: AssetImage("assets/Group 9965.png"),
          //     fit: BoxFit.cover),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
              top: h * 0.04, left: w * 0.05, right: w * 0.05, bottom: h * 0.05),
          child: Stack(
            children: [
              Positioned(
                top: h * 0.06,
                left: w * 0.35,
                right: w * 0.35,
                child: Image.asset(
                  'assets/Group 6274@2x.png',
                  height: h * 0.07,
                  width: w * 0.07,
                ),
              ),
              Positioned(
                top: h * 0.17,
                left: w * 0.15,
                right: w * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Welcome to Indulge',
                        style: whiteMedium22,
                      ),
                    ),
                    spacer2(context),
                    Text(
                      'Please follow these House Rules.',
                      style: whiteLight13,
                    ),
                    spacer(context),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: w * 0.05, top: h * 0.28, right: w * 0.05),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // spacer(context),
                      ListTile(
                        horizontalTitleGap: w / -50,
                        minVerticalPadding: w / 30,
                        leading: Icon(
                          MyFlutterApp.check,
                          color: const Color.fromRGBO(255, 51, 102, 1),
                          size: w / 18,
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(bottom: w / 50),
                          child: Text(
                            'Be yourself.',
                            style: whiteMedium16,
                          ),
                        ),
                        subtitle: Text(
                          'Make sure your photos, age and bio are true to who you are.',
                          style: whiteLight13,
                        ),
                      ),
                      // spacer2(context),
                      ListTile(
                        horizontalTitleGap: w / -50,
                        minVerticalPadding: w / 30,
                        leading: Icon(
                          MyFlutterApp.check,
                          color: const Color.fromRGBO(255, 51, 102, 1),
                          size: w / 18,
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(bottom: w / 50),
                          child: Text(
                            'Stay safe.',
                            style: whiteMedium16,
                          ),
                        ),
                        subtitle: Text(
                          'Don\'t be too quick to give out personal information.',
                          style: whiteLight13,
                        ),
                      ),
                      // spacer2(context),
                      ListTile(
                        horizontalTitleGap: w / -50,
                        minVerticalPadding: w / 30,
                        leading: Icon(
                          MyFlutterApp.check,
                          color: const Color.fromRGBO(255, 51, 102, 1),
                          size: w / 18,
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(bottom: w / 50),
                          child: Text(
                            'Play it cool.',
                            style: whiteMedium16,
                          ),
                        ),
                        subtitle: Text(
                          'Respect others and treat them as you would like to be treated.',
                          style: whiteLight13,
                        ),
                      ),
                      // spacer2(context),
                      ListTile(
                        horizontalTitleGap: w / -50,
                        leading: Icon(
                          MyFlutterApp.check,
                          color: const Color.fromRGBO(255, 51, 102, 1),
                          size: w / 18,
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(bottom: w / 50),
                          child: Text(
                            'Be proactive.',
                            style: whiteMedium16,
                          ),
                        ),
                        minVerticalPadding: w / 30,
                        subtitle: Text(
                          'Always report bad behavior.',
                          style: whiteLight13,
                        ),
                      ),
                      spacer(context),
                    ],
                  ),
                ),
              ),
              Align(
                // heightFactor: 15,
                alignment: Alignment.bottomCenter,
                child: simpleButton('I Agree', context, () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const Login_Screen(),
                      ));
                  print('Button pressed');
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
