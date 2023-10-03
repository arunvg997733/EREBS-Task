import 'package:flutter/material.dart';

const height10 = SizedBox(height: 10,);
const height20 = SizedBox(height: 20,);
const height30 = SizedBox(height: 30,);

const width10 = SizedBox(width: 10,);
const width20 = SizedBox(width: 20,);
const width30 = SizedBox(width: 30,);

const kWhite = Colors.white;
const kBlack = Colors.black;

Widget textStyleWidget(String text,double size,Color color){
  return Text(text,style: TextStyle(fontSize: size,color: color),);
}