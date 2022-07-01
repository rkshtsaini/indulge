// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:indulge/widgets/widgets.dart';

class PhoneNumberAuth extends StatefulWidget {
  const PhoneNumberAuth({required Key key}) : super(key: key);

  @override
  State<PhoneNumberAuth> createState() => _PhoneNumberAuthState();
}

class _PhoneNumberAuthState extends State<PhoneNumberAuth> {
  var phoneNumber = TextEditingController();
  var key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              "assets/Group 5574@3x.png",
            )),
      ),
      body: Form(
        key: key,
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 10,
              left: MediaQuery.of(context).size.width / 16,
              right: MediaQuery.of(context).size.width / 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Number",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              spacer(context),
              Text(
                "When you tap continue, we will send you a code for verification via text message on the number that you have entered. You can login via verified number only.",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.justify,
              ),
              spacer(context),
              TextFormField(
                controller: phoneNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Phone Number",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(color: Colors.black))),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    "assets/Icons@3x.png",
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                  ),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              spacer(context),
              simpleButton("Continue", context, () {})
            ],
          ),
        ),
      ),
    );
  }
}
