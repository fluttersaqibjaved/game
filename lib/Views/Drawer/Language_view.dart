import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
       appBar: null,
      body:  Padding(
  padding: EdgeInsets.only(top: 50.0), 
  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                         child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();  
            },
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(
                'assets/images/Frame 9.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
                       ),
                          SizedBox(height: 2.h),
                             Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                              child: Text(
                                                'Change',
                                                style: TextStyle(
                                                  color: Colors.pinkAccent,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                            ),
                
                    Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                     child: Text(
                                       'Language',
                                       style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                                       ),
                                     ),
                   ),
                SizedBox(height: 5.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                        'English',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                                       ),
                                       
                                   Icon(
            Icons.check, 
            size: 20, 
            color: Colors.pinkAccent,
          ),
                     ],
                   ),
                 ),
                SizedBox(height: 2.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                 SizedBox(height: 2.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                   child: Text(
                    'French',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 2.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                 SizedBox(height: 2.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                   child: Text(
                    'Dutuch',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 2.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                 SizedBox(height: 2.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                   child: Text(
                    'Chinese',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 2.h),
                 Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                             SizedBox(height: 2.h),
                  
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                   child: Text(
                    'Arabic',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 2.h),
                 Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                             SizedBox(height: 2.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                   child: Text(
                    'Spanish',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 2.h),
                 Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                             SizedBox(height: 2.h),
               
                              
                ]
                ),
          
            ]
  ),
      ),
    );
  }
}
