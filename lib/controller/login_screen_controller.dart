import 'dart:convert';
import 'package:erebstest/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class LoginScreenController extends GetxController{

  String token = 'token":"310|HJrKSOrupMBq18Oqz4hIL0mNwqSOJv45bKUavKnP';

  login(String mobileNumber,String passWord,BuildContext context)async{
    print('started');
    print(passWord);
    try {
    final uri = Uri.parse('https://portal.crowdafrik.com/api/login');
    final body = {
      'phone_number': mobileNumber,
      'password': passWord,
      'device_type':'Android'
    };
    final response =await http.post(uri,body:body);
    print(response.body);
    if(response.statusCode == "01"){
      
      print('Arun');
      Get.snackbar("Success", "Login Successfully");
      
    }
      
    } catch (e) {
      print(e);
      Get.snackbar('Error', e.toString());
    }

    
  }
}