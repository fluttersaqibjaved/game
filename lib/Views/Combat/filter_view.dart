import 'package:flutter/material.dart';
import 'package:gametime/Views/Combat/filterlocation_view.dart';
import 'package:sizer/sizer.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
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
                         child:   GestureDetector(
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
                                                'Filter',
                                                style: TextStyle(
                                                  color: Colors.pinkAccent,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                            ),
                SizedBox(height: 2.h),
                    Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                     child: Text(
                                       'Sort By',
                                       style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                                       ),
                                     ),
                   ),
                SizedBox(height: 2.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Trending',
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Most Popular',
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Recent',
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Location',
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Text(
                    'FILTER',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                   SizedBox(height: 2.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Highest Pay',
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Medium Pay',
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                   child: Text(
                    'Lowest Pay',
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
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                 child: Text(
                                                   'ADDITIONAL FILTER',
                                                   style: TextStyle(
                                                     color: Colors.pinkAccent,
                                                     fontSize: 15,
                                                     fontWeight: FontWeight.bold,
                                                   ),
                                                   ),
                               ),
                   SizedBox(height: 2.h),
                                               Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                                 child: Row(
                                                   children: [
                                                     Text(
                                                         'S0.00',
                                                         style: TextStyle(
                                                           color: Colors.black,
                                                           fontSize: 15,
                                                           fontWeight: FontWeight.bold,
                                                         ),
                                                         ),
                                                         SizedBox(width: 25.w),
                                                          Text(
                                                         'S6000.00',
                                                         style: TextStyle(
                                                           color: Colors.black,
                                                           fontSize: 15,
                                                           fontWeight: FontWeight.bold,
                                                         ),
                                                         ),
                                                   ],
                                                 ),
                                               ),
                ]
                ),
             TextButton(
                            onPressed: () async {   
                              Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FilterLocationView(),
                            ),
                          );

                            },
                                 child: Container(
                                  alignment: Alignment.center,
                                  width: 50.w,
                                  height: 7.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Color(0xFFFF3F81),
                                     boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 3,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                  ),
                                  child: Text('Apply',
                                      style: TextStyle(color: Colors.white, fontSize: 20)),
                                ),
                               ),
  
            ]
  ),
      ),
    );
  }
}