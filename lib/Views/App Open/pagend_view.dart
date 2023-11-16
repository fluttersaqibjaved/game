import 'package:flutter/material.dart';
import 'package:gametime/Views/Login%20Detail/acccount_view.dart';
import 'package:sizer/sizer.dart';

class PagendView extends StatefulWidget {
  const PagendView({super.key});

  @override
  State<PagendView> createState() => _PagendViewState();
}

class _PagendViewState extends State<PagendView> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: null,
      body: Stack(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
            color: Color(0xF4F8FB),
            ),
             Padding(
  padding: EdgeInsets.only(top: 150.0), 
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       SizedBox(
        height: 30.h,
        width: 100.w,
        child: Padding(
          padding: EdgeInsets.only(left: 40.0), 
          child: Image.asset(
            'assets/images/Group 393.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
        SizedBox(height: 5.h),
        Text(
          'Schedule Games',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'With Friends',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Easily create an upcoming',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            
          ),
        ),
        Text(
          'event and get ready for battle.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            
          ),
        ),
        Text(
          'Yeah! real combat fella.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            
          ),
        ),
        SizedBox(height: 4.h),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountView()),
            );
          },
          child: Text(
            'Skip',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.pink,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  ),

),

          ]
      ),
      );
  }
}