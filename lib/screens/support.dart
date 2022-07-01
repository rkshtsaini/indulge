import 'package:flutter/material.dart';
import 'package:indulge/screens/signin_screen.dart';
import 'package:indulge/widgets/widgets.dart';

import '../icons/my_flutter_app_icons.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromRGBO(73, 25, 181, 1),
      appBar: AppBar(
        actions: [
          Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              height: MediaQuery.of(context).size.width / 1,
              width: MediaQuery.of(context).size.width / 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width / 35),
                        elevation: 2,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignIn_Screen(),
                                ));
                          },
                          child: SizedBox(
                              height: MediaQuery.of(context).size.width / 9.5,
                              width: MediaQuery.of(context).size.width / 9,
                              child: Icon(
                                MyFlutterApp.group_5574,
                                color: Colors.black,
                                size: MediaQuery.of(context).size.height / 20,
                              )),
                        )),
                    Text(
                      'Support',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width / 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 30,
                    )
                  ],
                ),
              )),
        ],
        // toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(73, 25, 181, 1),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: h * 0.06,
            left: w * 0.1,
            right: w * 0.1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/Group 6275@2x.png',
                  width: w * 0.5,
                  height: h * 0.19,
                ),
              ),
              spacer(context),
              Column(
                children: [
                  textFieldName(context, 'Name'),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 23,
                  ),
                  textFieldEmail(context, 'Email'),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 23,
                  ),
                  textFieldSubject(context, 'Subject'),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 23,
                  ),
                  textFieldDescription(context, 'Description'),
                  spacer(context),
                  simpleButton('Submit', context, () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            children: [
                              Center(
                                child: Image.asset('assets/Group 12029.png'),
                              ),
                              Center(
                                  child: Text(
                                'Thank you for reaching us',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 18,
                                    fontWeight: FontWeight.w500),
                              )),
                              spacer2(context),
                              Center(
                                child: Text(
                                    'We will get back to you within 24 hrs',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              30,
                                      color:
                                          const Color.fromRGBO(72, 72, 72, 1),
                                    )),
                              ),
                              spacer2(context),
                            ],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          );
                        });
                  }),
                  spacer(context),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Support@indulge.com',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 23,
                            color: const Color.fromRGBO(255, 51, 102, 1),
                            decoration: TextDecoration.underline),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
