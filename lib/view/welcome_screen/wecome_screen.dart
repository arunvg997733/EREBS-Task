import 'package:erebstest/core/contant.dart';
import 'package:erebstest/view/login_screen/login_screen.dart';
import 'package:erebstest/view/widget/widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Stack(
        children: [
          BackgroundImageWidget(size: size),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size*0.45,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
              ),

              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    height10,
                    textStyleWidget('Welcome to ', 30,kBlack),
                    height20,
                    textStyleWidget('CrowdAfrik is a Financial technology (fintech) initiative with a broad range of ideas that aim to provide support, finances and deploy technical exchanges to Africans with the main goal of poverty reduction, industrial development and creating job opportunities.', 13,kBlack),
                    height20,
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  LoginScreen(),));
                      },
                      child: Container(
                        height: size*0.09,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xffFE2929),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Flexible(flex: 1,fit:FlexFit.tight,child: SizedBox(),),
                            Flexible(flex: 1,fit:FlexFit.tight,child: textStyleWidget('Get Started', 15,kWhite),),
                            const Flexible(flex: 1,fit:FlexFit.tight,child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_forward,color: kWhite,),
                                width10
                              ],
                            ),)
                          ],
                        ),
                      ),
                    )
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

