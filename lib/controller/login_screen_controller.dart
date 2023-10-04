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
    print(response.statusCode);
    if(response.statusCode == 200 ){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));
      Get.snackbar("Success", "Login Successfully");
      final data = jsonDecode(response.body);
      token =data["token"];
      print(token);
      
    }else{
      print(response.body);
      final data = jsonDecode(response.body);
      Get.snackbar('Error',data['message'] );
    }
      
    } catch (e) {
      print(e);
      Get.snackbar('Error', e.toString());
    }

    
  }

  getuserdetails()async{
    final response = await http.get(Uri.parse('https://portal.crowdafrik.com/api/user-details'),headers: )
  }
}