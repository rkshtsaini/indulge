import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:indulge/data/api/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

import '../../app_constants.dart';

class AuthRepo extends GetxService {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> login(String mobile) async {
    return await apiClient.postData(AppConstants.LOGIN_URI, {
      "device_id": "zrx4ty",
      "device_token": "lasdfjcvldkscvasd56465456",
      "device_type": "ios",
      "phone_code": "+91",
      "type": "phone",
      "mobile": mobile,
    });
  }

  Future<Response> signup(String mobile, String email) async {
    return await apiClient.postData(AppConstants.SIGNUP_URI, {
      "device_id": "zrx4ty",
      "device_token": "lasdfjcvldkscvasd56465456",
      "device_type": "ios",
      "phone_code": "+91",
      "mobile": mobile,
      "email": email,
      "bio": "About here put it"
    });
  }

  Future<Response> verifyUser() async {
    return await apiClient.postData(AppConstants.VERIFY_USER_URI, {
      "device_id": "zrx4ty",
      "device_token": "lasdfjcvldkscvasd56465456",
      "device_type": "ios",
      "code": "1234",
      "user_id": "1",
      "type": "signup"
    });
  }

  Future<Response> resendOTP() async {
    return await apiClient.postData(AppConstants.RESEND_OTP_URI, {
      "device_id": "zrx4ty",
      "device_token": "lasdfjcvldkscvasd56465456",
      "device_type": "ios",
      "user_id": "1",
      "type": "phone"
    });
  }

// String device_id, String device_token,
//       String device_type, String phone_code, String type, String mobile
  // Future<Response> register({required SignUpModel signUpModel}) async {
  //   // final body = jsonEncode(signUpModel);
  //   return await apiClient.postData('api/auth/register', signUpModel);
  // }

  // Future<bool> saveUserToken(String token) async {
  //   apiClient.token = token;
  //   apiClient.updateHeader(token);
  //   return await sharedPreferences.setString(AppConstants.TOKEN, token);
  // }

  // bool isLoggedIn() {
  //   return sharedPreferences.containsKey(AppConstants.TOKEN);
  // }

  // Future<void> saveUserRepo(String userId, String userprofile) async {
  //   try {
  //     await sharedPreferences.setString(AppConstants.user_id, userId);
  //     await sharedPreferences.setString(AppConstants.user_image, userprofile);
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  // bool clearSharedData() {
  //   sharedPreferences.remove(AppConstants.TOKEN);
  //   sharedPreferences.remove(AppConstants.user_id);
  //   sharedPreferences.remove(AppConstants.user_image);
  //   //sharedPreferences.setStringList(AppConstants.CART_LIST, []);
  //   apiClient.token = '';
  //   apiClient.updateHeader('');
  // //   debugPrint("successfully deleted data");
  //   return true;
  // }

  // Future<Response> register(
  //     {required String name,
  //     required String email,
  //     required String age,
  //     required String sport_category_id,
  //     required String address,
  //     required String latitude,
  //     required String longitude,
  //     required String device_token,
  //     required String role_id,
  //     required String password,
  //     required String? skills_id,
  //     required String angency}) async {
  //   // final body = jsonEncode(signUpModel);
  //   return await apiClient.postData('api/auth/register', {
  //     "name": name,
  //     "email": email,
  //     "age": age,
  //     "sport_category_id": sport_category_id,
  //     "address": address,
  //     "latitude": latitude,
  //     "longitude": longitude,
  //     "device_token": device_token,
  //     "role_id": role_id,
  //     "password": password,
  //     "skill_ids": skills_id,
  //     "angency": angency
  //   });
  // }

  // //for auth repo
  // Future<http.Response> register2(
  //     SignUpModel signUpModel, String imagepath) async {
  //   return await apiClient.postMultipartData2Register(signUpModel, imagepath,
  //       AppConstants.APP_BASE_URL + 'api/auth/register');
  // }
}
