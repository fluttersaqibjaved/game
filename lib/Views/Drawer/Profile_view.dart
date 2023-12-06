import 'package:flutter/material.dart';
import 'package:gametime/Views/Drawer/acountinformation_view.dart';
import 'package:gametime/Views/Drawer/changepassword_view.dart';
import 'package:gametime/Views/Drawer/payments_view.dart';
import 'package:sizer/sizer.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:
       
           Padding(
  padding: EdgeInsets.only(top: 10.0), 
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
                  'Profile',
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
                                SizedBox(height: 1.h),
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
                                       SizedBox(height: 1.h),
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
                                                                           'Edit Bio',
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
                                       SizedBox(height: 1.h),
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
                            fontSize: 12,
                              fontWeight: FontWeight.bold,
                          ),
                                      ),
                                      
                                       Text(
                          'Los Angeles',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                              
                          ),
                                      ),
                                        Text(
                          'Edit Funcation',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                              
                          ),
                                      ),
                
                  SizedBox(height: 1.h),
                       
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AccountInformationView()),
        );
      },
      child: Text(
        'Account Information',
        style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangePasswordView()),
        );
      },
      child: Text(
        'Change Password',
        style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
   
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentView()),
        );
      },
      child: Text(
        'Payments & Billing',
        style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    
  


                                          
                                      
                                                     
                ],
                      ),
              ),
              
            ],
          ),
        ),
        
    );
  }
}