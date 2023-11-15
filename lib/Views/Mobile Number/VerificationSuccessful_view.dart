import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VerificationSuccessfulView extends StatefulWidget {
  const VerificationSuccessfulView({super.key});

  @override
  State<VerificationSuccessfulView> createState() => _VerificationSuccessfulViewState();
}

class _VerificationSuccessfulViewState extends State<VerificationSuccessfulView> {
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
            Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20.h,
          width: 30.w,
          child: Image.asset(
            'assets/images/Success.png',
            fit: BoxFit.contain,
          ),
        ),
         SizedBox(height: 2.h),
        Text(
          'Verification',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Successful',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          'You now have ful access to',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
              
          ),
        ),
        Text(
          'our system',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
              
          ),
        ),
        SizedBox(height: 2.h),
      TextButton(
                        onPressed: () {
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 50.w,
                          height: 8.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.sp),
                              color: Colors.pinkAccent,
                          ),
                          child: Text(
                            'Lets Combat!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      ],
                    ),
                  ),
                
               ]
             ),
             );
  }
}