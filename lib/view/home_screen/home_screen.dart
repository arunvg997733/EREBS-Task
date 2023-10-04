import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return  Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              
              Container(
                width: double.infinity,
                height: size*.25,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
                    Color(0xffFE2929),
                    Color(0xffFE2929),
                    Color(0xff071333)
                  ])
                ),
              )
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label: ''),
      ]),
    );
  }
}