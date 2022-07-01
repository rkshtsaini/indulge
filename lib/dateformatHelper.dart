// ignore_for_file: avoid_print, file_names

import 'dart:convert';

import 'package:age_calculator/age_calculator.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

String getDOB(String birthDateString) {
  String datePattern = "dd-MM-yyyy";

  DateTime birthDate = DateFormat(datePattern).parse(birthDateString);
  DateDuration duration;
  // Find out your age as of today's date 2021-03-08
  duration = AgeCalculator.age(birthDate);
  return "${duration.years}";
}

settingValues() async {
  var pref = await SharedPreferences.getInstance();
  var data = json.decode(pref.getString("appearence").toString());

  return data;
}
