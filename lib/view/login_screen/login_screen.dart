import 'package:erebstest/controller/login_screen_controller.dart';
import 'package:erebstest/core/contant.dart';
import 'package:erebstest/view/home_screen/home_screen.dart';
import 'package:erebstest/view/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController userNamectr = TextEditingController();
  TextEditingController passWordctr = TextEditingController();
  final getLogin = Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 43, 45),
      body: Stack(
        
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size*0.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
              ),

              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                   textStyleWidget('Sign In', 15, kBlack),
                   height10,
                    TextField(
                    controller: userNamectr,
                    decoration: const InputDecoration(
                      hintText: 'Enter your phone number',
                      filled: true,
                      fillColor: Color(0xffF1F1F1),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all(Radius.circular(15))
                      )
                    ),
                   ),
                   height10,
                    TextField(
                    controller: passWordctr,
                    decoration: const InputDecoration(
                      hintText: 'Enter your password',
                      filled: true,
                      fillColor: Color(0xffF1F1F1),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.all(Radius.circular(15))
                      )
                    ),
                   ),
                   height10,
                   textStyleWidget('Forgot password', 15, kBlack),
                   height10,
                   InkWell(
                      onTap: () {
                        getLogin.login(userNamectr.text, passWordctr.text,context);
                        
                        
                      },
                      child: Container(
                        height: size*0.09,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xffFE2929),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        child: Center(child: textStyleWidget('Login', 15,kWhite)),
                      ),
                    ),
                    height10,
                    textStyleWidget("Don't have an account yet? Sign Up", 10, kBlack)
                  ],
                ),
              ),
          
            ),
          )
        ],
      ),
    );
  }
}