import 'package:flutter/material.dart';
import 'package:gametime/Views/Combat/combatjoin_view.dart';
import 'package:sizer/sizer.dart';

class CombatInformationView extends StatefulWidget {
  const CombatInformationView({super.key});

  @override
  State<CombatInformationView> createState() => _CombatInformationViewState();
}

class _CombatInformationViewState extends State<CombatInformationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:
        SingleChildScrollView(
          child:
           Padding(
  padding: EdgeInsets.only(top: 50.0), 
  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                       IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.pinkAccent),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          SizedBox(height: 3.h),
                            Text(
                  'Combat',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(height: 1.h),
                Text(
                  'Information',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 30,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                 Container(
                      height: 40.h,
                      width: 100.w,
                    decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(5.sp),
                          border: Border.all(
                            color: Colors.pinkAccent,
                            width: 1.sp,
                          ),
                    ),
                child:  Padding(
                padding: EdgeInsets.all(20.0),
              
                child:
                   Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                      'NFS(Rivals 2)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                     Text(
                                      'S4000',
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                 ],
                               ),
                                
                                
                                Row(
                                  children: [
                                    Text(
                                      'Status:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                     Text(
                                      'Open',
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ), 
                                SizedBox(height: 10), 
                        Row(
                         children: [
                          
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/Avatar.png',
                                  width: 60,
                                  height: 60,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Scott Brown',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                
                               
                              ],
                            ),
                            SizedBox(width: 3.w),
                                            Column(
                                              children: [
                                                Text(
                                                                            'VS',
                                                                            style: TextStyle(
                                                                              color: Colors.pinkAccent,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 25,
                                                                            ),
                                                                          ),
                                              ],
                                            ), 
                                SizedBox(width: 3.w),
                                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/Avatar.png',
                                  width: 60,
                                  height: 60,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Stone Stella',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                
                               
                              ],
                            ),
                            SizedBox(width: 3.w),
                             Text(
                                                                            '+',
                                                                            style: TextStyle(
                                                                              color: Colors.pinkAccent,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 25,
                                                                            ),
                                                                          ),
                            SizedBox(width: 3.w),
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/Avatar.png',
                                  width: 60,
                                  height: 60,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Teslar Fullar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                
                               
                              ],
                            ),
                         ],
                        ),
                        SizedBox(height: 5.h),
                           Row(
                             children: [
                               Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Avatar.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Shema Laset',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                               ),
                               SizedBox(width: 5.w),
                                 Text(
                                   '+',
                               style: TextStyle(
                              color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                               fontSize: 25,
                               ),
                               ),
                                SizedBox(width: 5.w),
                                       Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/Avatar.png',
                                      width: 60,
                                      height: 60,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Tobi Dubala',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                       ),
                             ],
                           ),
                           
                         ],
                       ),
                  ),
                    ),
                       SizedBox(height: 3.h),
                Text(
                  'DISCRIPTION',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 20,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2.h),
                 Text(
                  'Hi players, here the jerk; i need 6 solid gamers to join me',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                      
                  ),
                ),
                 SizedBox(height: 1.h),
                 Text(
                  'on this quest playing NFS(Rivals 2) you all will be rewareded',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                     
                  ),
                ),
                 SizedBox(height: 1.h),
                 Text(
                  'according to the ya positions, hits and points. Ready for',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                      
                  ),
                ),
                 SizedBox(height: 1.h),
                 Text(
                  'this challlange? Lets rock!!!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                     
                  ),
                ),
                SizedBox(height: 2.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          'CATEGORY',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 20,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                       Text(
                          'Racing',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                              
                          ),
                                      ),
                        ],
                      ),
                      SizedBox(width: 10.w),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          'LOCATION',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 20,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                       Text(
                          'Los Angeles',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                              
                          ),
                                      ),
                        ],
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 4.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          '1ST POSITION',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 10,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                       Text(
                          'S2000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          '2ND POSITION',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 10,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                       Text(
                          'S1000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                        ],
                      ),
                      
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          '3RD POSITION',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 10,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                       Text(
                          'S500',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                        ],
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          '4TH 5TH 6TH POSITION',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 10,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                       Text(
                          'S160',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                   Container(
                                width: 100.w,
                                height: 25.h,
                                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                              child:  Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.0),
                              child:
                               
                                  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Row(
                                      children: [
                                        Icon(
                                        Icons.lock_clock,
                                         color: Colors.white,
                                         ),
                                         SizedBox(width: 2.w),
                                           Text(
                                        'TIME INTERVAL',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                       ),
                                      ],
                                    ),
                                  SizedBox(height: 2.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'FROM',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                                                
                                            ),
                                          ),
                                           SizedBox(height: 2.h),
                                            Text(
                                        'MON, NOV 4,2019',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                                            
                                        ),
                                      ),
                                       SizedBox(height: 2.h),
                                       Text(
                                        'TO',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                                            
                                        ),
                                      ),
                                       SizedBox(height: 2.h),
                                        Text(
                                        'MON, NOV 4,2019',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                                            
                                        ),
                                      ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'FROM',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                                               
                                            ),
                                          ),
                                           SizedBox(height: 2.h),
                                           Text(
                                        '12:30 AM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                                           
                                        ),
                                      ),
                                       SizedBox(height: 2.h),
                                      Text(
                                        'TO',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                                           
                                        ),
                                      ),
                                       SizedBox(height: 2.h),
                                         Text(
                                        '03:30 AM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                                           
                                        ),
                                      ),
                                        ],
                                      ),
                                    ],
                                  ),
                                    ],
                                     ),
                              ),
                              ),
                               Text(
                          'REMAINDER',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 20,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                      Row(
                                        children: [
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
                                             SizedBox(width: 5.w),
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
                                  SizedBox(height: 2.h),
                                
                               SizedBox(height: 2.h),
              
                              
                ],
                      ),
              ),
                TextButton(
                                onPressed: () async {   
                                    Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CombatJoinView(),
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
                                      child: Text('Join Combat!',
                                          style: TextStyle(color: Colors.white, fontSize: 20)),
                                    ),
                                   ),
            ],
          ),
        ),
        ),
    );
  }
}