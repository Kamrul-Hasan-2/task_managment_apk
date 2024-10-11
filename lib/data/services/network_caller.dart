import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:task_managment_apk/data/model/network_response.dart';

class NetworkCaller {
  static Future<NetworkResponse> getRequest(String url) async {
    try {
      Uri uri = Uri.parse(url);
      debugPrint(url);
      final Response response = await get(uri);

      printResponse(url, response);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return NetworkResponse(
            isSuccess: true,
            statusCode: response.statusCode,
            responseData: jsonData);
      } else {
        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
        );
      }
    } catch (e) {
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        errorMessage: e.toString(),
      );
    }
  }

  static Future<NetworkResponse> postRequest(
      {required String url, Map<String, dynamic>? body}) async {
    try {
      Uri uri = Uri.parse(url);
      debugPrint(url);
      final Response response = await post(
        uri,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body),
      );

      printResponse(url, response);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);

        if(jsonData['status'] == 'false'){
          return NetworkResponse(
              isSuccess: false,
              statusCode: response.statusCode,
              errorMessage: jsonData['data']
          );
        }

        return NetworkResponse(
            isSuccess: true,
            statusCode: response.statusCode,
            responseData: jsonData);
      } else {
        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
        );
      }
    } catch (e) {
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        errorMessage: e.toString(),
      );
    }
  }

  static void printResponse(String url, Response response) {
    debugPrint(
        'URL : $url\nResponse : ${response.body}\nStatus Code : ${response.statusCode}');
  }
}
