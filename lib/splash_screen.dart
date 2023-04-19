import 'dart:async';


import 'package:clean_campus/login.dart';
import 'package:clean_campus/myhomepage.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                color: Colors.green,
                width: 3
              ),
  
              ),
              child: Lottie.asset('image/Lottie/clean.json'),
            ),
          SizedBox(
          height: MediaQuery.of(context).size.height * .08,
          ),
          const Align(
            alignment: Alignment.center,
              child:  Text(
            'Clean\nCampus App',textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}