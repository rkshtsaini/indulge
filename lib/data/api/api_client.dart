import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:get/get.dart';
import 'package:indulge/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart' as Foundation;

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  final SharedPreferences sharedPreferences;
  late Map<String, String> _mainHeaders;
  final int timeoutInSeconds = 30;

  ApiClient({required this.sharedPreferences, required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = sharedPreferences.getString(AppConstants.TOKEN) ?? "";
    // token = AppConstants.PLAYERTOKEN;
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8 ',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> postData(
    String uri,
    dynamic body,
  ) async {
    try {
      Response response = await post(
        uri, body,
        // query: query,
        // contentType: contentType,
        headers: _mainHeaders,
      );
      response = handleResponse(response);
      if (Foundation.kDebugMode) {
        log('====> GetX Response: [${response.statusCode}] $uri\nsuccessfull posted data');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  Future<Response> getData(
    String uri, {
    Map<String, dynamic>? query,
    String? contentType,
    Map<String, String>? headers,
    Function(dynamic)? decoder,
  }) async {
    try {
      Response response = await get(
        uri,
        contentType: contentType,
        query: query,
        headers: headers ?? _mainHeaders,
        decoder: decoder,
      );
      response = handleResponse(response);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  void updateHeader(String token) {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Response handleResponse(Response response) {
    Response _response = response;
    if (_response.hasError &&
        _response.body != null &&
        _response.body is! String) {
      if (_response.body.toString().startsWith('{errors: [{code:')) {
        _response = Response(
            statusCode: _response.statusCode,
            body: _response.body,
            statusText: "Error");
        print("Errror " + _response.body.toString());
      } else if (_response.body.toString().startsWith('{message')) {
        _response = Response(
            statusCode: _response.statusCode,
            body: _response.body,
            statusText: _response.body['message']);
        print("success" + _response.body);
      }
    } else if (_response.hasError && _response.body == null) {
      _response = Response(
          statusCode: 0,
          statusText:
              'Connection to API server failed due to internet connection');
    }
    return _response;
  }
}
