import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gametime/Views/Drawer/Statistics_view.dart';
import 'package:sizer/sizer.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:   SingleChildScrollView(
                child: Padding(
  padding: EdgeInsets.only(top: 40.0),
  child:
                     Column(
                       children: [
                         Padding(
                                   padding: EdgeInsets.symmetric(horizontal: 30.0),
                            child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
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
                           SizedBox(height: 2.h),
                                Text(
                            'Schedule Game',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          
                         TextField(
                           decoration: InputDecoration(
                             hintText: 'Game Name',
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.pinkAccent), 
                             ),
                             focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.green), 
                             ),
                           ),
                         ),
                         
                                   
                          TextField(
                           decoration: InputDecoration(
                             hintText: 'Category',
                             hintStyle: TextStyle(color: Colors.black,fontSize: 10,),
                             suffixIcon: Padding(
                               padding: EdgeInsets.all(8.0),
                               child: Icon(
            Icons.check, 
            size: 20, 
            color: Colors.pinkAccent,
          ),
                             ),
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.pinkAccent),
                             ),
                             focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.green),
                             ),
                           ),
                         ),
                         TextField(
                           decoration: InputDecoration(
                             hintText: 'Location',
                             hintStyle: TextStyle(color: Colors.black,fontSize: 10,),
                             suffixIcon: Padding(
                               padding: EdgeInsets.all(8.0),
                               child: Icon(
            Icons.check, 
            size: 20, 
            color: Colors.pinkAccent,
          ),
                             ),
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.pinkAccent),
                             ),
                             focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.green),
                             ),
                           ),
                         ),
                         
                         SizedBox(height: 1.h),
                           Padding(
                         padding: EdgeInsets.only(left: 230.0), 
                          child:
                                    Text(
                            'Set as default?',
                             style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                           ),
                          SizedBox(height: 1.h),
                           Text(
                            'FROM',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 12,
                              
                            ),
                          ),
                          SizedBox(height: 1.h),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   Text(
                                    'MON, NOV 4,2019',
                                     style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                     ),
                                     SizedBox(width: 3.w),
                                     Image.asset(
                                           'assets/images/Frame 10.png', 
                                           width: 14, 
                                           height: 14, 
                                          
                                         ),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Text(
                                    '12:30 AM',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                   ),
                                   SizedBox(width: 3.w),
                                   Image.asset(
                                           'assets/images/Frame 10.png', 
                                           width: 14, 
                                           height: 14, 
                                           
                                         ),
                                 ],
                               ),
                             ],
                           ),
                           SizedBox(height: 1.h),
                           Text(
                            'TO',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 12,
                              
                            ),
                          ),
                           SizedBox(height: 1.h),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   Text(
                                    'MON, NOV 9,2019',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                   ),
                                   SizedBox(width: 3.w),
                                   Image.asset(
                                           'assets/images/Frame 10.png', 
                                           width: 14, 
                                           height:14, 
                                           
                                         ),
                                 ],
                               ),
                              Row(
                                 children: [
                                   Text(
                                    '12:30 AM',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                   ),
                                   SizedBox(width: 3.w),
                                   Image.asset(
                                           'assets/images/Frame 10.png', 
                                           width: 14, 
                                           height: 14, 
                                           
                                         ),
                                 ],
                               ),
                             ],
                           ),
                           SizedBox(height: 1.h),
                                   TextField(
                           decoration: InputDecoration(
                             hintText: 'Name of Players',
                              hintStyle: TextStyle(
                               color: Colors.black, 
                               fontSize: 10,
                             ),
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.pinkAccent), 
                             ),
                             focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.green), 
                             ),
                           ),
                         ),
                         SizedBox(height: 1.h),
                           Padding(
                         padding: EdgeInsets.only(left: 120.0), 
                          child:
                                     Text(
                                'How many required players for this combat?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                               ),
                           ),
                                     TextField(
                           decoration: InputDecoration(
                             hintText: 'Description',
                              hintStyle: TextStyle(
                               color: Colors.black, 
                               fontSize: 10,
                             ),
                             enabledBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.pinkAccent), 
                             ),
                             focusedBorder: UnderlineInputBorder(
                               borderSide: BorderSide(color: Colors.green), 
                             ),
                           ),
                         ),
                         SizedBox(height: 3.h),
                                     Text(
                            'REMAINDER',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 1.h),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   Text(
                                    '1 week',
                                     style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                   ),
                                   SizedBox(width: 2.w),
                                    Image.asset(
                                               'assets/images/Frame 10.png', 
                                               width: 14,
                                               height: 14, 
                                               
                                             ),
                                 ],
                               ),
                                Row(
                                  children: [
                               Center(
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: Colors.pinkAccent, 
                width: 1.0, 
              ),
            ),
            child: Icon(
              Icons.check,
              color: Colors.pinkAccent,
              size: 18,
            ),
          ),
        ),
                                                 SizedBox(width: 2.w),
                                                               Text(
                                    'Notification',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                                               ),
                                  ],
                                ),
                                Row(
                               children: [  Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: Colors.pinkAccent, 
                                  width: 1.0,
                                ),
                              ),
                            ),
                                  
                            SizedBox(width: 2.w),
                                     Text(
                                    'Email',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                                               ),
                                  ],
                                ),
                             ],
                           ),
                           SizedBox(height: 5.h),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                    TextButton(
                                      onPressed: () async {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return BackdropFilter(
                                                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                                child: StatisticsView(),
                                              );
                                            },
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
                                        ),
                                        child: Text(
                                          'Publish',
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        ),
                                      ),
                                    ),
                                       ],
                                     ),
                            ]
                          ),
                         ),
                       ],
                     ),
        ),
        ),
    );
  }
}