import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PlayerInformationView extends StatefulWidget {
  const PlayerInformationView({super.key});

  @override
  State<PlayerInformationView> createState() => _PlayerInformationViewState();
}

class _PlayerInformationViewState extends State<PlayerInformationView> {
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
                          SizedBox(height: 2.h),
                            Text(
                  'Player Information',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2.h),
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                      'Online',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ), 
                                 Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Earned:',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                         Text(
                                      'S5000',
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                      ],
                                    ),
                                    SizedBox(width: 2.w),
                                     Container(
                                          height: 5.h,
                                          width: 0.1.w,
                                          color: Colors.black,
                                        ),
                                        SizedBox(width: 2.w),
                                     Column(
                                      children: [
                                        Text(
                                          'Staked:',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                         Text(
                                      'S2000',
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                      ],
                                    ),
                                    SizedBox(width: 2.w),
                                      Container(
                                          height: 5.h,
                                          width: 0.1.w,
                                          color: Colors.black,
                                        ),
                                        SizedBox(width: 2.w),
                                     Column(
                                      children: [
                                        Text(
                                          'Points:',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      
                                         Text(
                                      '18,000',
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                      ],
                                    ),
                                  ],
                                ), 
                                SizedBox(height: 3.h),
                                  Text(
                                      'BIO',
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                     Text(
                          'HI players, Im from Los Angeles and i Love',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                              
                          ),
                                      ),
                 Text(
                          'Playing soccer and car racing games with',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                              
                          ),
                                      ),
                 Text(
                          'fellow player. Lets connect!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                              
                          ),
                                      ),
                                       SizedBox(height: 3.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center, 
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
                                          fontSize: 17,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ]
                                       ),
                               
                              ],
                            ),
                           
                                         
                          
                            
                         
                  ),
                    ),
                       SizedBox(height: 3.h),
                          Text(
                          'CATEGORY',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 14,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                       Row(
                                         children: [
                                           Container(
                                            height: 4.h,
                                                                 width: 15.w,
                                                               decoration: BoxDecoration(
                                                                     
                                                                     borderRadius: BorderRadius.circular(5.sp),
                                                                     border: Border.all(
                                                                       color: Colors.pinkAccent,
                                                                       width: 1.sp,
                                                                     ),
                                                               ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Racing',
                                                                           style: TextStyle(
                                                                             color: Colors.black,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                           ),
                                           SizedBox(width: 4.w),
                                             Container(
                                            height: 4.h,
                                                                 width: 15.w,
                                                               decoration: BoxDecoration(
                                                                     
                                                                     borderRadius: BorderRadius.circular(5.sp),
                                                                     border: Border.all(
                                                                       color: Colors.pinkAccent,
                                                                       width: 1.sp,
                                                                     ),
                                                               ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Soccer',
                                                                           style: TextStyle(
                                                                             color: Colors.black,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                           ),
                                           SizedBox(width: 4.w),
                                             Container(
                                            height: 4.h,
                                                                 width: 20.w,
                                                               decoration: BoxDecoration(
                                                                     
                                                                     borderRadius: BorderRadius.circular(5.sp),
                                                                     border: Border.all(
                                                                       color: Colors.pinkAccent,
                                                                       width: 1.sp,
                                                                     ),
                                                               ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Adventure',
                                                                           style: TextStyle(
                                                                             color: Colors.black,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                           ),
                                           SizedBox(width: 4.w),
                                             Container(
                                            height: 4.h,
                                                                 width: 15.w,
                                                               decoration: BoxDecoration(
                                                                     
                                                                     borderRadius: BorderRadius.circular(5.sp),
                                                                     border: Border.all(
                                                                       color: Colors.pinkAccent,
                                                                       width: 1.sp,
                                                                     ),
                                                               ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Action',
                                                                           style: TextStyle(
                                                                             color: Colors.black,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(height: 2.h),
                                         Row(
                                           children: [
                                             Container(
                                                                                     height: 4.h,
                                                                   width: 15.w,
                                                                 decoration: BoxDecoration(
                                                                       
                                                                       borderRadius: BorderRadius.circular(5.sp),
                                                                       border: Border.all(
                                                                         color: Colors.pinkAccent,
                                                                         width: 1.sp,
                                                                       ),
                                                                 ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Horror',
                                                                           style: TextStyle(
                                                                             color: Colors.black,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                                                                    ),
                                                                                     SizedBox(width: 4.w),
                                             Container(
                                                                                     height: 4.h,
                                                                   width: 25.w,
                                                                 decoration: BoxDecoration(
                                                                       
                                                                       borderRadius: BorderRadius.circular(5.sp),
                                                                       border: Border.all(
                                                                         color: Colors.pinkAccent,
                                                                         width: 1.sp,
                                                                       ),
                                                                 ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Simulation',
                                                                           style: TextStyle(
                                                                             color: Colors.black,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                                                                    ),
                                           ],
                                         ),
                SizedBox(height: 2.h),
                 Text(
                          'LOCATION',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 14,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      SizedBox(height: 2.h),
                                       Text(
                          'Los Angeles',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                              
                          ),
                                      ),
                
                  SizedBox(height: 2.h),
                               Text(
                          'Player',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 14,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                                        'Combat',
                                                                        style: TextStyle(
                                                                          color: Colors.pinkAccent,
                                                                          fontSize: 14,
                                                                            fontWeight: FontWeight.bold,
                                                                        ),
                                                                                    ),
                                                                                      Text(
                                                                        'Filter',
                                                                        style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 14,
                                                                            fontWeight: FontWeight.bold,
                                                                        ),
                                                                                    ),
                                            ],
                                          ),
                                      SizedBox(height: 2.h),
                                        Container(
                height: 10.h,
                width: 100.w,
              decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(5.sp),
                    border: Border.all(
                      color: Colors.pinkAccent,
                      width: 1.sp,
                    ),
              ),
          child:  Padding(
         padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h,), 
          child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Avatar.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Scott Brown',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 5,
                            ),
                          ),
                          SizedBox(height: 10),
                         
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
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                              ],
                                            ), 
                          SizedBox(width: 2.w),
                                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Avatar.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Stoe Stella',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 5,
                            ),
                          ),
                          
                         
                        ],
                      ),
                      SizedBox(width: 2.w),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         Text(
                            'Game Name:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Hola5',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          
                         
                        ],
                      ),
                      SizedBox(width: 2.w),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                            'Status:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
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
                      SizedBox(width: 2.w),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            'Winning Price:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'S4,000',
                            style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                         
                         
                        ],
                      ),

                   ],
                 ),
            ),
              ),
              SizedBox(height: 1.h),
               Container(
                height: 10.h,
                width: 100.w,
              decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(5.sp),
                    border: Border.all(
                      color: Colors.pinkAccent,
                      width: 1.sp,
                    ),
              ),
          child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h,), 
          child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Avatar.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Shedroc Bety',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 5,
                            ),
                          ),
                          SizedBox(height: 10),
                         
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
                                                                              fontSize: 20,
                                                                            ),
                                                                          ),
                                              ],
                                            ), 
                          SizedBox(width: 2.w),
                                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Avatar.png',
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Usman Terik',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 5,
                            ),
                          ),
                          
                         
                        ],
                      ),
                      SizedBox(width: 2.w),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Text(
                            'Game Name:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Martal Kombat',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          
                         
                        ],
                      ),
                      SizedBox(width: 2.w),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                            'Status:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Cancalled',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          
                         
                        ],
                      ),
                      SizedBox(width: 2.w),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            'Winning Price:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'S7,000',
                            style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                         
                         
                        ],
                      ),

                   ],
                 ),
            ),
              ),
                     SizedBox(height: 2.h),                
                ],
                      ),
              ),
              
            ],
          ),
        ),
        ),
    );
  }
}