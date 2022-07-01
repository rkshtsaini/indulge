// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'style.dart';

header(text, context, theme) {
  return Text(
    text,
    style: theme,
    textAlign: TextAlign.center,
  );
}

spacer(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.width / 18,
  );
}

spacer2(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.width / 30,
  );
}
//button

authButtons(text, image, context, onPress) {
  return InkWell(
    onTap: onPress,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 25, right: 25),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(7, 211, 223, 1)),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            // left: MediaQuery.of(context).size.width / 40,
            // right: MediaQuery.of(context).size.width / 40,
            top: MediaQuery.of(context).size.width / 70,
            bottom: MediaQuery.of(context).size.width / 70,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              Text(
                text,
                style: whiteRegular15,
                // style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 35,
              ),
              SvgPicture.asset(
                image, height: MediaQuery.of(context).size.width / 12,
                width: MediaQuery.of(context).size.width / 9,
                // MediaQuery.of(context).size.width / 20,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

authButtons2(text, image, context, onPress) {
  return InkWell(
    onTap: onPress,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 25, right: 25),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 51, 102, 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            // left: MediaQuery.of(context).size.width / 40,
            // right: MediaQuery.of(context).size.width / 40,
            top: MediaQuery.of(context).size.width / 70,
            bottom: MediaQuery.of(context).size.width / 70,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              Text(
                text,
                style: whiteRegular15,
                // style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 35,
              ),
              SvgPicture.asset(
                image, height: MediaQuery.of(context).size.width / 12,
                width: MediaQuery.of(context).size.width / 9,
                // MediaQuery.of(context).size.width / 20,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

authButtons3(text, image, context, onPress) {
  return InkWell(
    onTap: onPress,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 25, right: 25),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 51, 102, 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            // left: MediaQuery.of(context).size.width / 40,
            // right: MediaQuery.of(context).size.width / 40,
            top: MediaQuery.of(context).size.width / 70,
            bottom: MediaQuery.of(context).size.width / 70,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              Text(
                text,
                style: whiteRegular15,
                // style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: SvgPicture.asset(
                  image, height: MediaQuery.of(context).size.width / 20,
                  width: MediaQuery.of(context).size.width / 15,

                  // MediaQuery.of(context).size.width / 20,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

authButtons4(text, image, context, onPress) {
  return InkWell(
    onTap: onPress,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 25, right: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            // left: MediaQuery.of(context).size.width / 40,
            // right: MediaQuery.of(context).size.width / 40,
            top: MediaQuery.of(context).size.width / 70,
            bottom: MediaQuery.of(context).size.width / 70,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              Text(
                text,
                style: whiteRegular15,
                // style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: SvgPicture.asset(
                  image, height: MediaQuery.of(context).size.width / 20,
                  width: MediaQuery.of(context).size.width / 15,
                  color: Colors.white,

                  // MediaQuery.of(context).size.width / 20,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

simpleButton(text, context, onPress) {
  return InkWell(
    onTap: onPress,
    child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          gradient: LinearGradient(colors: [
            Color.fromRGBO(170, 213, 233, 1),
            Color.fromRGBO(97, 54, 193, 1),
          ]),
          borderRadius: BorderRadius.circular(30)),
      //height: MediaQuery.of(context).size.width/6.5,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
        child: Text(
          text,
          style:
              whiteRegular16, // style: Theme.of(context).textTheme.headline2,
        ),
      ),
    ),
  );
}

simpleButton2(text, context, onPress) {
  return InkWell(
    onTap: onPress,
    child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          color: Color.fromRGBO(255, 51, 102, 1),
          borderRadius: BorderRadius.circular(30)),
      //height: MediaQuery.of(context).size.width/6.5,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
        child: Text(
          text,
          style: whiteMedium15,
        ),
      ),
    ),
  );
}

simpleButto3(text, context, onPress, color) {
  return InkWell(
    onTap: onPress,
    child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          color: color,
          borderRadius: BorderRadius.circular(30)),
      //height: MediaQuery.of(context).size.width/6.5,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Navigo',
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: MediaQuery.of(context).size.width /
                  22), // style: Theme.of(context).textTheme.headline2,
        ),
      ),
    ),
  );
}

button(text, context, onPress) {
  return InkWell(
    onTap: onPress,
    child: Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(145, 42, 250, 1), width: 1.5),
          borderRadius: BorderRadius.circular(15)),
      //height: MediaQuery.of(context).size.width/6.5,
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 26),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Color.fromRGBO(145, 42, 250, 1),
              ),
        ),
      ),
    ),
  );
}

otpfield(context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width * 0.1,
    child: TextField(
      onChanged: ((value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      }),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: const InputDecoration(
        fillColor: Colors.grey,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
    ),
  );
}

textFieldName(context, text) {
  return Container(
    width: 391,
    height: MediaQuery.of(context).size.height / 14,
    decoration: BoxDecoration(
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.width / 15),
      color: Colors.white,
    ),
    child: TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          top: MediaQuery.of(context).size.height / 85,
        ),
        hintText: text,
        hintStyle: TextStyle(
            color: Color.fromRGBO(115, 115, 115, 1),
            fontSize: MediaQuery.of(context).size.width / 23,
            fontFamily: 'Navigo'),
        border: InputBorder.none,
      ),
    ),
  );
}

textFieldEmail(context, text) {
  return Container(
    height: MediaQuery.of(context).size.height / 14,
    decoration: BoxDecoration(
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.width / 15),
      color: Colors.white,
    ),
    child: TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          top: MediaQuery.of(context).size.height / 85,
        ),
        hintText: text,
        hintStyle: TextStyle(
            color: Color.fromRGBO(115, 115, 115, 1),
            fontSize: MediaQuery.of(context).size.width / 23,
            fontFamily: 'Navigo'),
        border: InputBorder.none,
      ),
    ),
  );
}

textFieldSubject(context, text) {
  return Container(
    height: MediaQuery.of(context).size.height / 14.5,
    decoration: BoxDecoration(
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.width / 15),
      color: Colors.white,
    ),
    child: TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.black,
        ),
        contentPadding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 20,
          top: MediaQuery.of(context).size.width / 25,
        ),
        hintText: text,
        hintStyle: TextStyle(
            color: Color.fromRGBO(115, 115, 115, 1),
            fontSize: MediaQuery.of(context).size.width / 23,
            fontFamily: 'Navigo'),
        border: InputBorder.none,
      ),
    ),
  );
}

textFieldDescription(context, text) {
  return Container(
    height: MediaQuery.of(context).size.width / 3,
    decoration: BoxDecoration(
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.width / 15),
      color: Colors.white,
    ),
    child: TextFormField(
      maxLines: 5,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(
          MediaQuery.of(context).size.width / 20,
        ),
        hintText: text,
        hintStyle: TextStyle(
            color: Color.fromRGBO(115, 115, 115, 1),
            fontSize: MediaQuery.of(context).size.width / 23,
            fontFamily: 'Navigo'),
        border: InputBorder.none,
      ),
    ),
  );
}
