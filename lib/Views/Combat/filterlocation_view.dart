import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FilterLocationView extends StatefulWidget {
  const FilterLocationView({super.key});

  @override
  State<FilterLocationView> createState() => _FilterLocationViewState();
}

class _FilterLocationViewState extends State<FilterLocationView> {
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                         child:    GestureDetector(
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Text(
                                                'Filter By',
                                                style: TextStyle(
                                                  color: Colors.pinkAccent,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                            ),
                
                    Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                     child: Text(
                                       'Location',
                                       style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                                       ),
                                     ),
                   ),
                SizedBox(height: 2.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Container(
                                  height: 7.h,
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(25.0),
                                     border: Border.all(color: Colors.pinkAccent,),
                                  ),
                                  child: Row(
                                    children: [
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: IconButton(
                          icon: Icon(Icons.search, color: Colors.pinkAccent,),
                          onPressed: () {
                            
                          },
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Location',
                            border: InputBorder.none,
                          ),
                          onTap: () {
                            
                          },
                        ),
                      ),
                                    ],
                                  ),
                                ),
                 ),
                              SizedBox(height: 2.h),
                                 Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Text(
                                                    'Use Current Location',
                                                    style: TextStyle(
                                                      color: Colors.pinkAccent,
                                                      fontSize: 20,
                                                     
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Choose Location',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                                   ),
                 ),
                SizedBox(height: 2.h),
                 Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Arbenesta',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 1.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                 SizedBox(height: 1.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Albion',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 1.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                 SizedBox(height: 1.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Algeria',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 1.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                 SizedBox(height: 1.h),
                 Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Angola',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 1.h),
                 Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                             SizedBox(height: 1.h),
                                Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                 child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text(
                                                       'Australia',
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
                 SizedBox(height: 1.h),
                 Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                             SizedBox(height: 1.h),
                                Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                 child: Text(
                                                   'Belgium',
                                                   style: TextStyle(
                                                     color: Colors.black,
                                                     fontSize: 15,
                                                   ),
                                                 ),
                               ),
                 SizedBox(height: 1.h),
                 Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                             SizedBox(height: 1.h),
                                Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                 child: Text(
                                                   'Bologna',
                                                   style: TextStyle(
                                                     color: Colors.black,
                                                     fontSize: 15,
                                                   ),
                                                 ),
                               ),
                 SizedBox(height: 1.h),
                 Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                             SizedBox(height: 1.h),
                                Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                 child: Text(
                                                   'Canada',
                                                   style: TextStyle(
                                                     color: Colors.black,
                                                     fontSize: 15,
                                                   ),
                                                 ),
                               ),
                  SizedBox(height: 1.h),
                 Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                             SizedBox(height: 1.h),
                               Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                 child: Text(
                                                   'Chad',
                                                   style: TextStyle(
                                                     color: Colors.black,
                                                     fontSize: 15,
                                                   ),
                                                 ),
                               ),
                SizedBox(height: 1.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                ]
               )
            ]
  )
          ),
    );
  }
}
