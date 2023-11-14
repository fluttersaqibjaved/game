import 'package:flutter/material.dart';
import 'package:gametime/Views/splashscreen_view.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          // title: 'GameTime',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreenView(), 
        );
      },
    );
  }
}


