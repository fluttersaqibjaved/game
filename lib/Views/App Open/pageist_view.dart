import 'package:flutter/material.dart';
import 'package:gametime/Views/Login%20Detail/acccount_view.dart';
import 'package:sizer/sizer.dart';

class PageistView extends StatefulWidget {
  const PageistView({super.key});

  @override
  State<PageistView> createState() => _PageistViewState();
}

class _PageistViewState extends State<PageistView> {
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
  padding: EdgeInsets.only(top: 12.h), 
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
        height: 30.h,
        width: 100.w,
        child: Padding(
          padding: EdgeInsets.only(left: 8.w), 
          child: Image.asset(
            'assets/images/Image.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
        SizedBox(height: 5.h),
        Text(
          'Get Paid! Playing',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Video Game',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Earn points and real cash when',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            
          ),
        ),
        Text(
          'you win a battle with no delay in',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            
          ),
        ),
        Text(
          'cashing out',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            
          ),
        ),
        SizedBox(height: 5.h),
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