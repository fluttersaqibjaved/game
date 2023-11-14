import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gametime/Views/game_view.dart';
import 'package:sizer/sizer.dart';

class SplashScreenView extends StatefulWidget {
  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
   
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GameView()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: null,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            color: Colors.pinkAccent,
          ),
            Center(
            child: Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child:
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.h,
                        width: 20.w,
                        child: Image.asset(
                          'assets/images/Group 3.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        'GAAMETIIME',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'CONNECT WITH YOUR REALITY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
          ),
           Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 23.h,
              width: 100.w,
              child: Image.asset(
                'assets/images/Graphics.png',
                fit: BoxFit.contain,
              ),
            ),
           ),
        ]
      ),
    );
  }
}