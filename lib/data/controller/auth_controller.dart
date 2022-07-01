import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:indulge/app_constants.dart';
import 'package:indulge/screens/interest_screens.dart';
import 'package:indulge/screens/otp_screen.dart';
import 'package:indulge/widgets/widgets.dart';
import '../repos/auth_repo.dart';

class AuthController extends GetxController {
  TextEditingController loginController = TextEditingController();

  TextEditingController signUpEmailController = TextEditingController();

  final AuthRepo authRepo;
  AuthController({required this.authRepo});
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login() async {
    _isLoading = true;
    update();
    Response response = await authRepo.login(loginController.text);
    var jsonString = response.body;
    final data = json.decode(jsonString);

    print('====> Status code: [${response.statusCode}]');

    if (response.statusCode == 200) {
      print(' status ${data["status"]}');
      if (data["status"] == 300 && data["message"] == "Invalid chat Id!.") {
        print("failed post login");
        Get.snackbar('Create a Acoount', 'You are not Registered Yet',
            colorText: Colors.white);
      } else if (loginController.text.length < 10) {
        Get.snackbar('Failed', "Please Enter a valid Phone Number",
            colorText: Colors.white);
      } else if (data["status"] == 300) {
        Get.snackbar('Failed', data["message"]);
      } else if (data["status"] == 200) {
        Get.snackbar('Succesfull', data["message"],
            snackPosition: SnackPosition.TOP,
            colorText: Colors.white,
            backgroundColor: AppConstants.primaryColor);
        Get.to(() => Verify_Screen());
      }
    }
    _isLoading = false;
    update();
  }

  Future<void> signup() async {
    _isLoading = true;
    update();
    Response response =
        await authRepo.signup(loginController.text, signUpEmailController.text);
    var jsonString = response.body;
    final data = json.decode(jsonString);
    print('====> Status code: [${response.statusCode}]');

    if (response.statusCode == 200) {
      print(' status ${data["status"]}');
      if (data["status"] == 300) {
        print("failed post login");
        print(data['message']);
        Get.snackbar('Failed', data["message"],
            colorText: Colors.white,
            backgroundColor: AppConstants.primaryColor);
      } else if (data["status"] == 200 && data['timer'] == 60) {
        Get.to(() => Verify_Screen());
        print(data['message']);
        Get.snackbar("Sucess", data["message"],
            colorText: Colors.white,
            backgroundColor: AppConstants.primaryColor);
      }
    }

    _isLoading = false;
    update();
  }

  Future<void> verifyUser() async {
    _isLoading = true;
    update();
    Response response = await authRepo.verifyUser();
    var jsonString = response.body;
    final data = json.decode(jsonString);
    print('====> Status code: [${response.statusCode}]');
    if (data["status"] == 200) {
      print(' status ${data["status"]}');
      print(data["message"]);
      print(data);
      Get.snackbar("Success", data["message"],
          colorText: Colors.white, backgroundColor: AppConstants.primaryColor);
      Get.to(() => OnBoardScreen());
    } else if (data["status"] != 200) {
      print(data["message"]);
      print(data);
      Get.snackbar("Failed", data["message"],
          colorText: Colors.white, backgroundColor: AppConstants.primaryColor);
    } else {
      print(data["message"]);
      print(data);
    }
  }

  Future<void> resendOTP() async {
    _isLoading = true;
    update();
    Response response = await authRepo.resendOTP();
    var jsonString = response.body;
    final data = json.decode(jsonString);
    print('====> Status code: [${response.statusCode}]');
    if (response.statusCode == 200) {
      print(' status ${data["status"]}');
      print(data["message"]);
      Get.snackbar("Success", data["message"],
          colorText: Colors.white, backgroundColor: AppConstants.primaryColor);
    } else {
      print(data["message"]);
      Get.snackbar("Failed", data["message"],
          backgroundColor: AppConstants.primaryColor, colorText: Colors.white);
    }
  }
}
