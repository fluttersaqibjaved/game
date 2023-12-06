import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StatisticsView extends StatefulWidget {
  const StatisticsView({super.key});

  @override
  State<StatisticsView> createState() => _StatisticsViewState();
}

class _StatisticsViewState extends State<StatisticsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:  SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(top: 20),
         child: Column(
          children: [
             Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child:
            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  
                                IconButton(
                                    icon: Icon(Icons.arrow_back, color: Colors.pinkAccent),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                             
                                  Text(
                              'Statistics',
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          
                            SizedBox(height: 2.h),
                               
                                 Container(
                                      width: 100.w,
                                      height: 15.h,
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
                                                Text(
                                                  'THIS WEEK EARNINGS',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                                      
                                                  ),
                                                ),
                                                 SizedBox(height: 1.h),
                                                   Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                     children: [
                                                       Text(
                                                                                                     'S240.00',
                                                                                                     style: TextStyle(
                                                                                                       color: Colors.white,
                                                                                                       fontSize: 25,
                                                                                                       fontWeight: FontWeight.bold,
                                                                                                     ),
                                                                                                    ),
                                                                                                   SizedBox(
          height: 5.h,
          width: 25.w,
          child: Image.asset(
            'assets/images/Stats.png',
           
          ),
        ),
                                                     ],
                                                   ),
                                              ],
                                            ),
                                    ),
                                    ),
                                    SizedBox(height: 2.h),
                                     Text(
                              'Scheduled Games',
                              style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 2.h),
                              Container(
                  height: 15.h,
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
                   
                      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'YOU CREATED:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                 Text(
                                  'Game Begins: 11 days 21 hrs 22 min',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                                  'Game Name:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                      'Mortal Kombat',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                  'Racing,Multiplayer,Simulation,..',
                                  style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                   Container(
                                                                                     height: 4.h,
                                                                   width: 15.w,
                                                                 decoration: BoxDecoration(
                                                                       color: Colors.pinkAccent,
                                                                       borderRadius: BorderRadius.circular(5.sp),
                                                                     
                                                                 ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Edit',
                                                                           style: TextStyle(
                                                                             color: Colors.white,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                                                                    ),
                              ],
                            ),
                          ],
                        ),
                      
              ),
                ),
                SizedBox(height: 2.h),
                  Container(
                  height: 15.h,
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
                   
                      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'YOU CREATED:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                 Text(
                                  'Game Begins: 11 days 21 hrs 22 min',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                                  'Game Name:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                      'Halo 5',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                  'Racing,Multiplayer,Simulation,..',
                                  style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                   Container(
                                                                                     height: 4.h,
                                                                   width: 15.w,
                                                                 decoration: BoxDecoration(
                                                                       color: Colors.pinkAccent,
                                                                       borderRadius: BorderRadius.circular(5.sp),
                                                                     
                                                                 ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Edit',
                                                                           style: TextStyle(
                                                                             color: Colors.white,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                                                                    ),
                              ],
                            ),
                          ],
                        ),
                      
              ),
                ),
                SizedBox(height: 2.h),
                  Container(
                  height: 15.h,
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
                   
                      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'YOU CREATED:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                 Text(
                                  'Game Begins: 11 days 21 hrs 22 min',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                                  'Game Name:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                      'Devil May Cry',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                  'Racing,Multiplayer,Simulation,..',
                                  style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                   Container(
                                                                                     height: 4.h,
                                                                   width: 15.w,
                                                                 decoration: BoxDecoration(
                                                                       color: Colors.pinkAccent,
                                                                       borderRadius: BorderRadius.circular(5.sp),
                                                                     
                                                                 ),
                                             child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Text(
                                                                           'Edit',
                                                                           style: TextStyle(
                                                                             color: Colors.white,
                                                                             fontSize: 14,
                                                                               
                                                                           ),
                                                                                       ),
                                               ],
                                             ),
                                                                                    ),
                              ],
                            ),
                          ],
                        ),
                      
              ),
                ),
                SizedBox(height: 2.h),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                                               'Played Games',
                                                               style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                                               ),
                                                             ),
                                                              Text(
                                                               'FILTER',
                                                               style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                                               ),
                                                             ),
                                 ],
                               ),
                                    SizedBox(height: 2.h),
                                         Text(
                                      'All information of the previous games you',
                                            style: TextStyle(
                                              
                                              color: Colors.black,
                                              fontSize: 15,
                                            
                                            ),
                                          ),
                                         Text(
                                      'you played can be found and access here',
                                            style: TextStyle(
                                              
                                              color: Colors.black,
                                              fontSize: 15,
                                            
                                            ),
                                          ),
                                          SizedBox(height: 2.h),
                                    Container(
                height: 25.h,
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
                  
                    
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        
                          SizedBox(height: 10),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                                'HOST:YOU',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Price:S4000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                                Text(
                                'Status:Closed',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                           ],
                         ),
                         SizedBox(height: 2.h),
                           Text(
                            'Game Name:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                           Text(
                            'Mortal Kombat',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 2.h),
                           Row(
                             children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                    'Winner Name:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                                             ),
                                                             SizedBox(width: 2.w,),
                                   Text(
                                    'JKAY BLAIR',
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                                             ),
                                 ],
                               ),
                               SizedBox(width: 5.w,),
                               Text(
                                'Action, Multiplayers, Simulation,..',
                                style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                                         ),
                             ],
                           ),
                           SizedBox(height: 2.h),
                            Text(
                                'CONTESTANT:SCOTT BROWN,JKAY BLAR,VERONICA ALIYA,YEMUO URRI',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                                         ),
                        ],
                      ),
                      ), 
                 ),
                 SizedBox(height: 2.h),
                Container(
                height: 25.h,
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
                  
                    
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        
                          SizedBox(height: 10),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                                'HOST:YOU',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Price:S500',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                                Text(
                                'Status:Closed',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                           ],
                         ),
                         SizedBox(height: 2.h),
                           Text(
                            'Game Name:',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                           Text(
                            'NFS 2020',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 2.h),
                           Row(
                             children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text(
                                    'Winner Name:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                                             ),
                                                             SizedBox(width: 2.w,),
                                   Text(
                                    'Stone Stellar',
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                                             ),
                                 ],
                               ),
                               SizedBox(width: 5.w,),
                               Text(
                                'Racing, Multiplayers, Simulation,..',
                                style: TextStyle(
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                                         ),
                             ],
                           ),
                           SizedBox(height: 2.h),
                            Text(
                                'CONTESTANT:SCOTT BROWN,JKAY BLAR,VERONICA ALIYA,YEMUO URRI',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                                         ),
                        ],
                      ),
                      ), 
                 ),
            
              SizedBox(height: 2.h),
                              ],
            ),
             ),
 
          ]
        ),
        ),
      ),
 
    );
  }
}