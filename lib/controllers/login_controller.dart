import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:oeuf_ivoire/config/function.dart';
import 'package:oeuf_ivoire/network/network_handler.dart';
import 'package:oeuf_ivoire/screen/home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginWithPhone() async {
    var headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
    try {
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndPoints.loginUser);
      Map body = {
        'user_phone': phoneController.text,
        'user_password': passwordController.text
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);
      print(jsonDecode(response.body));
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        print(json['message']);
        if (json['code'] == 0) {
          var token = json['message']['Token'];
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', token);

          phoneController.clear();
          passwordController.clear();
          Get.off(HomePage());
        } else if (json['code'] == 1) {
          throw jsonDecode(response.body)['message'];
        }
      } else {
        throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
      }
    } catch (error) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Error'),
              contentPadding: EdgeInsets.all(20),
              children: [Text(error.toString())],
            );
          });
    }
  }
}
