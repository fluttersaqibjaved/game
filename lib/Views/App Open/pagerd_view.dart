import 'package:flutter/material.dart';
import 'package:gametime/Views/Login%20Detail/acccount_view.dart';
import 'package:sizer/sizer.dart';

class PagerdView extends StatefulWidget {
  const PagerdView({super.key});

  @override
  State<PagerdView> createState() => _PagerdViewState();
}

class _PagerdViewState extends State<PagerdView> {
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
  padding: EdgeInsets.only(top: 120.0), 
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 35.h,
          width: 100.w,
          child: Image.asset(
            'assets/images/Image-2.png',
            fit: BoxFit.contain,
          ),
        ),
        Text(
          'Text, Audio and',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Video Chat',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Intuitive real life experience on',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
              
          ),
        ),
        Text(
          'mobile. Chat with fellow gamers',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
              
          ),
        ),
        Text(
          'before and after combat for',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
              
          ),
        ),
         Text(
          'free!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            
          ),
        ),
        SizedBox(height: 2.h),
      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AccountView(),
                            ),
                          );
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
                ),
               ]
             ),
             );
            }
            }