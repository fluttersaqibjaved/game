import 'package:flutter/material.dart';
import 'package:gametime/Views/Combat/combatinformation_view.dart';
import 'package:gametime/Views/Drawer/Appskin_view.dart';
import 'package:gametime/Views/Drawer/Chat_view.dart';
import 'package:gametime/Views/Drawer/Discover_view.dart';
import 'package:gametime/Views/Drawer/Language_view.dart';
import 'package:gametime/Views/Drawer/Schedule_view.dart';
import 'package:gametime/Views/Drawer/Statistics_view.dart';
import 'package:gametime/Views/Login%20Detail/login_view.dart';
import 'package:sizer/sizer.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:   Padding(
  padding: EdgeInsets.only(top: 60.0), 
  child: Center(
        child:
       Column(
        children: [
           Padding(
          padding: EdgeInsets.only(left: 290.0), 
          child:   GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); 
            },
            child:
            Image.asset(
                  'assets/images/Close Icon.png',
                  fit: BoxFit.fitWidth,
                  width: 8.0.w,
                ),
           ),
           ),
                 SizedBox(height: 3.h),
                   Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.0),
               child:    Column(
                 children: [
                   Row(
                            children: [
                             Image.asset(
                      'assets/images/Avatar.png',
                      fit: BoxFit.fitWidth,
                      width: 22.0.w,
                    ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Stone Stellar',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  
                                    Row(
                                      children: [
                                        Image.asset(
                                         'assets/images/Echelon.png',
                                           fit: BoxFit.fitWidth,
                                           width: 5.0.w,
                                           ),
                                           SizedBox(width: 1.w),
                                         Text(
                                        'Gold Player',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ]
                                       ),
                                       SizedBox(height: 0.5.h),
                                         Text(
                                        'Online',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                       ),
                                      ],
                                    ),
                                ],
                              ),
                                 SizedBox(height: 6.h),
           Row(
                        children: [
                         Image.asset(
                  'assets/images/Frame 1.png',
                  fit: BoxFit.fitWidth,
                  width: 5.0.w,
                ),
                          SizedBox(width: 8.w),
                            TextButton(
                            onPressed: () {
                               Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CombatInformationView(),
                            ),
                          );
                            },
                           child:  Text(
                            'My Profile',
                            style: TextStyle(
                              fontSize: 16,
                               color: Colors.black,
                            ),
                          ),
                            ),
                        ],
                      ),
                        SizedBox(height: 1.h),
                        Row(
                        children: [
                        Image.asset(
                  'assets/images/Frame 2.png',
                  fit: BoxFit.fitWidth,
                  width: 5.0.w,
                ),
                          SizedBox(width: 8.w),
                        TextButton(
                          onPressed: () {
                             Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>ScheduleView(),
                            ),
                          );
                          },
                          child: Text(
                            'Schedule',
                            style: TextStyle(
                              fontSize: 16,
                             color: Colors.black,
                            ),
                          ),
                        ),

                        ],
                      ),
                      SizedBox(height: 1.h),
                        Row(
                        children: [
                         Image.asset(
                  'assets/images/Frame 3.png',
                  fit: BoxFit.fitWidth,
                  width: 5.0.w,
                ),
                          SizedBox(width: 8.w),
                            TextButton(
                            onPressed: () {
                                Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => StatisticsView(),
                            ),
                          );
                            },
                           child: 
                          Text(
                            'Statistics',
                            style: TextStyle(
                              fontSize: 16,
                               color: Colors.black,
                            ),
                          ),
                            ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                        Row(
                        children: [
                          Image.asset(
                  'assets/images/Frame 4.png',
                  fit: BoxFit.fitWidth,
                  width: 5.0.w,
                ),
                          SizedBox(width: 8.w),
                            TextButton(
                            onPressed: () {
                                Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DiscoverView(),
                            ),
                          );
                            },
                           child: 
                          Text(
                            'Discover Combat',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                            ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                       Row(
                        children: [
                          Image.asset(
                  'assets/images/Frame 5.png',
                  fit: BoxFit.fitWidth,
                  width: 5.0.w,
                ),
                          SizedBox(width: 8.w),
                            TextButton(
                            onPressed: () {
                                Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ChatView(),
                            ),
                          );
                            },
                           child: 
                          Text(
                            'Chat',
                            style: TextStyle(
                              fontSize: 16,
                             color: Colors.black,
                            ),
                          ),
                            ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                       Row(
                        children: [
                          Image.asset(
                  'assets/images/Frame 6.png',
                  fit: BoxFit.fitWidth,
                  width: 5.0.w,
                ),
                          SizedBox(width: 8.w),
                            TextButton(
                            onPressed: () {
                                Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LanguageView(),
                            ),
                          );
                            },
                           child: 
                          Text(
                            'Change Language',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                            ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                       Row(
                        children: [
                          Image.asset(
                  'assets/images/Frame 7.png',
                  fit: BoxFit.fitWidth,
                  width: 5.0.w,
                ),
                          SizedBox(width: 8.w),
                            TextButton(
                            onPressed: () {
                                Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AppSkinView(),
                            ),
                          );
                    },
                           child: 
                          Text(
                            'Change App Skin',
                            style: TextStyle(
                              fontSize: 16,
                               color: Colors.black,
                            ),
                          ),
                            ),
                        ],
                      ),
                 ],
               ),     
                   ),
                      SizedBox(height: 8.h),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                  'assets/images/Frame 8.png',
                  fit: BoxFit.fitWidth,
                  width: 6.0.w,
                ),
                          SizedBox(width: 2.w),
                           TextButton(
  onPressed: () {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
               Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                 Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginView(),
                            ),
                          );
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  },
  child: Text(
    'Logout',
    style: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  ),
),

                        ],
                      ),
      ],
      ),
      ),
      ),
    );
  }
}
