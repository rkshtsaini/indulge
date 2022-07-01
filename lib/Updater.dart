// ignore_for_file: non_constant_identifier_names, unused_element, file_names

import 'package:flutter/material.dart';

class Updater extends ChangeNotifier {
  var min_age = double.parse(18.toString());
  get minAge => min_age;

  var max_age = double.parse(55.toString());
  get maxAge => max_age;

  var max_dis = 50.0;
  get maxDis => max_dis;

  var min_dis = 0.0;
  get minDis => min_dis;

  // Cities city;
  // get cities => city;

  var headline1 = 26.0;
  get _headline1 => headline1;

  var subtitle2 = 35.0;
  get _subtitle2 => subtitle2;

  var headline2 = 16.0;
  get _headline2 => headline2;

  var headline3 = 12.0;
  get _headline3 => headline3;

  var headlineLarge = 20.0;
  get _headlineLarge => headlineLarge;

  var default_size = 0.0;
  get _default_size => default_size;

  getDefault(val) {
    default_size = val;
    notifyListeners();
  }

  fontSize(size) {
    headline1 = size["headline1"] + default_size;
    subtitle2 = size["subtitle2"] + default_size;
    headline2 = size["headline2"] + default_size;
    headline3 = size["headline3"] + default_size;
    headlineLarge = size["headlineLarge"] + default_size;
    notifyListeners();
  }

  getAge(min, max) {
    min_age = min;
    max_age = max;
    notifyListeners();
  }

  // getCities(citiesList) {
  //   city = citiesList;
  //   notifyListeners();
  // }

  getDistance(min, max) {
    min_dis = min;
    max_dis = max;
    notifyListeners();
  }
}
