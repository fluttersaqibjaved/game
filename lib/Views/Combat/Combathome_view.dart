import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CombatHomeView extends StatefulWidget {
  const CombatHomeView({Key? key}) : super(key: key);

  @override
  _CombatHomeViewState createState() => _CombatHomeViewState();
}

class _CombatHomeViewState extends State<CombatHomeView> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: 
                       SingleChildScrollView(
                       child:
                       Padding(
                       padding: EdgeInsets.symmetric(horizontal: 2.w),
                       child:
                       Column(
                        children: [
                         SizedBox(height: 1.h),
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
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child:
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Schedule',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                'Easily schedule event/games',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                                    
                                ),
                              ),
                              Text(
                                'then find like minded players for',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                                   
                                ),
                              ),
                              Text(
                                'battle. You up for it?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  
                                ),
                                 ),
                              SizedBox(height: 2.h),
                                SizedBox(
                                height: 5.h,
                                width: 7.w,
                                child: Image.asset(
                                  'assets/images/Forward Arrow.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                                ],
                                 ),
                                 SizedBox(
                                height: 35.h,
                                width: 35.w,
                                child: Image.asset(
                                  'assets/images/Image (1).png',
                                  // fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                          ),
                          ),
              
                          SizedBox(height: 1.h),
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
                     padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child:
                       Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Statistics',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'All data from previous and',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                                             
                            ),
                          ),
                          Text(
                            'upcoming games can be found here',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                                            
                            ),
                          ),
                        
                          SizedBox(height: 2.h),
                            SizedBox(
                            height: 5.h,
                            width: 7.w,
                            child: Image.asset(
                              'assets/images/Forward Arrow.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                                                ],
                                              ),
                                              SizedBox(
                            height: 35.h,
                            width: 30.w,
                            child: Image.asset(
                              'assets/images/hjkhImage.png',
                              // fit: BoxFit.contain,
                            ),
                          ),
                                          ],
                                ),
                                ),
                                ),
                         SizedBox(height: 1.h),
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
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child:
                       Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discover Combats',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'Find out whats new and compete',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                            
                              ),
                            ),
                            Text(
                              'among players with new',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                              
                              ),
                                ),
                                Text(
                                  'challenges and earn cash with',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    
                                  ),
                                ),
                                  Text(
                                  'game points',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                  SizedBox(
                                  height: 5.h,
                                  width: 7.w,
                                  child: Image.asset(
                                    'assets/images/Forward Arrow.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                             SizedBox(
                            height: 55.h,
                            width: 30.w,
                            child: Image.asset(
                              'assets/images/bugbuImage.png',
                              // fit: BoxFit.contain,
                            ),
                          ),
                                          ],
                                ),
                                ),
                                ),
                                SizedBox(height: 1.h),
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
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Message Players',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    'Found the profile of a payer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                                  
                                    ),
                                  ),
                                  Text(
                                    'that interests you? Start a',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                                
                                    ),
                                  ),
                                  Text(
                                    'conversation',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                     
                                    ),
                                  ),
                                SizedBox(height: 2.h),
                                  SizedBox(
                                  height: 5.h,
                                  width: 7.w,
                                  child: Image.asset(
                                    'assets/images/Forward Arrow.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                                      ],
                                                    ),
                                                    
                                                    SizedBox(
                                  height: 35.h,
                                  width: 30.w,
                                  child: Image.asset(
                                    'assets/images/hbiuhuih.png',
                                    
                                  ),
                                ),
                                                ],
                                      ),
                                      ),
                                      ),
                                      SizedBox(height: 4.h),
                                                ]
                                      ),
                                      
                                              ),
                                              
                                              ),
       
    
      
//          bottomNavigationBar: BottomAppBar(
//   color: Colors.white.withOpacity(0.9), 
//   child:   SizedBox(
//   width: 100.w,
//   height: 20.h,
  
//                     child:   Stack(
//                         alignment: Alignment.center, 
//       children: [
//       SizedBox(
//   width: 100.w,
//   height: 20.h,
//   child: Image.asset(
//     'assets/images/Container- Task Bar.png',
//     fit: BoxFit.fill,
//   ),
// ),
//  Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.0,),
//             child:
//         Row(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//               Padding(
//   padding: EdgeInsets.only(top: 20.0), 
//   child:
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/Statistics Icon.png',
//                   width: 28,
//                   height: 28,
//                 ),
//                 Text('Statistics', style: TextStyle(color: Colors.white, fontSize: 15,),),
//               ],
//             ),
//               ),
//             SizedBox(width: 1.w),
//              Padding(
//   padding: EdgeInsets.only(top: 20.0), 
//   child:
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/Location_Pin.png',
//                   width: 28,
//                   height: 28,
//                 ),
//                 Text('Discover', style: TextStyle(color: Colors.white, fontSize: 15,),),
//               ],
//             ),
//              ),
//             SizedBox(width: 1.w),
//              Padding(
//   padding: EdgeInsets.only(bottom: 0.0), 
//   child:
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Stack(
//                   // alignment: Alignment.center,
//                   children: [
//                     SizedBox(
//                       child: Image.asset(
//                         'assets/images/Base Ellipse.png',
//                         width: 20.w,
//                         height: 10.h,
//                       ),
//                     ),
//                     Positioned(
//                       top: 20,
//                       left: 20,
//                       right: 20,
//                       bottom: 20,
//                       child: SizedBox(
//                         child: Image.asset(
//                           'assets/images/Schedule.png',
//                           width: 60,
//                           height: 60,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//              ),
//             SizedBox(width: 1.w),
//              Padding(
//   padding: EdgeInsets.only(top: 20.0), 
//   child:
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/Chat.png',
//                   width: 28,
//                   height: 28,
//                 ),
//                 Text('Chat', style: TextStyle(color: Colors.white, fontSize: 15,),),
//               ],
//             ),
//              ),
//             SizedBox(width: 1.w),
//              Padding(
//   padding: EdgeInsets.only(top: 20.0), 
//   child:
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/Profile.png',
//                   width: 28,
//                   height: 28,
//                 ),
//                 Text('Profile', style: TextStyle(color: Colors.white, fontSize: 15,),),
//               ],
//             ),
//              ),
//           ],
//         ),
//  ),
//       ],
//     ),
//                    ),
//          ),

    );
  }
}



     
      
   