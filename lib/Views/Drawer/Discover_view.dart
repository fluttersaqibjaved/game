import 'package:flutter/material.dart';
import 'package:gametime/Views/Combat/combatinformation_view.dart';
import 'package:sizer/sizer.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
     appBar:  AppBar(
      backgroundColor: Colors.pinkAccent,
      centerTitle: false,
     
     
     leading: Padding(
  padding: EdgeInsets.only(left: 30), 
  child: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () {
      Navigator.of(context).pop();
    },
  ),
),

      
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: Container(
            padding: const EdgeInsets.only(left: 30, bottom: 30, right: 20,),
            child: 
               
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                         Text('Discover', style: TextStyle(color: Colors.white, fontSize: 20)),
                         SizedBox(height: 5),
                          Row(
                            children: [
                             Text('Combat', style: TextStyle(color: Colors.white, fontSize: 20)),
                                SizedBox(width: 170),

                             Text('FILTER', style: TextStyle(color: Colors.white, fontSize: 10)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                     Container(
                                height: 7.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                                  ],
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
                          hintText: 'search combat',
                          border: InputBorder.none,
                        ),
                        onTap: () {
                          
                        },
                      ),
                    ),
                                  ],
                                ),
                              ),
                  ],
                ),
              
            
          )),
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0), 
          child: Column(     
            children: [
              SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                              'Trending this week',
                              style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                      
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'View All',
                                  style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                 Text(
                                  '>',
                                  style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                                 Text(
                                  '>',
                                  style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                              ],
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
                            'Jully Paga',
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
                            'Dada Awuri',
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
                            'NFS(Rivals 2)',
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
                            'Active',
                            style: TextStyle(
                              color: Colors.green,
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
                            'Oyiba Pepper',
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
                            'Sherma Laset',
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
                            'Ced Hand',
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
                            'Acitve',
                            style: TextStyle(
                              color: Colors.green,
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
                            'S3,000',
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
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                              'Most Popular Players',
                              style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                      
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'View All',
                                  style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                 Text(
                                  '>',
                                  style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                                 Text(
                                  '>',
                                  style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                              ],
                            ),
                  ],
                ),
                SizedBox(height: 2.h),
                  Row(
                    children: [
                      Container(
                                    height: 10.h,
                                    width: 43.w,
                                  decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(5.sp),
                        border: Border.all(
                          color: Colors.pinkAccent,
                          width: 1.sp,
                        ),
                                  ),
                              child:    Row(
                            children: [
                             Image.asset(
                      'assets/images/Ellipse.png',
                      fit: BoxFit.fitWidth,
                      width: 10.0.w,
                    ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Stone Stellar',
                                    style: TextStyle(
                                      fontSize: 10,
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
                                         Row(
                                           children: [
                                             Text(
                                               'Status:',
                                               style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                           ),
                                              Text(
                                               'Online',
                                               style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              ),
                                             ),
                                           ],
                                         ),
                                           Row(
                                           children: [
                                             Text(
                                               'Category:',
                                               style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                           ),
                                              Text(
                                               'Action Saccer',
                                               style: TextStyle(
                                              fontSize: 5,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              ),
                                             ),
                                           ],
                                         ),
                                      ],
                                    ),
                                ],
                              )
                                  ),
                                   SizedBox(width: 3.w),
             Container(
                                    height: 10.h,
                                    width: 43.w,
                                  decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(5.sp),
                        border: Border.all(
                          color: Colors.pinkAccent,
                          width: 1.sp,
                        ),
                                  ),
                              child:    Row(
                            children: [
                             Image.asset(
                      'assets/images/Ellipse.png',
                      fit: BoxFit.fitWidth,
                      width: 10.0.w,
                    ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Teslar fullar',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
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
                                        'Silver Player',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ]
                                       ),
                                       SizedBox(height: 0.5.h),
                                         Row(
                                           children: [
                                             Text(
                                               'Status:',
                                               style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                           ),
                                              Text(
                                               'Away',
                                               style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold,
                                              ),
                                             ),
                                           ],
                                         ),
                                           Row(
                                           children: [
                                             Text(
                                               'Category:',
                                               style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                           ),
                                              Text(
                                               'Action Saccer',
                                               style: TextStyle(
                                              fontSize: 5,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              ),
                                             ),
                                           ],
                                         ),
                                      ],
                                    ),
                                ],
                              )
                                  ),
                    ],
                  ),
                   SizedBox(height: 2.h),
                     Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      TextButton(
                          onPressed: () {
                             Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => CombatInformationView(),
                            ),
                          );
                          },
                          child:
                    Text(
                              'Latest Combats',
                              style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                      
                              ),
                            ),
                      ),
                            Row(
                              children: [
                                Text(
                                  'View All',
                                  style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                 Text(
                                  '>',
                                  style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                                 Text(
                                  '>',
                                  style: TextStyle(
                                                color: Colors.pinkAccent,
                                                fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                  
                                  ),
                                ),
                              ],
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
                            'Jully Paga',
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
                            'Dada Awuri',
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
                            'NFS(Rivals 2)',
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
                            'Active',
                            style: TextStyle(
                              color: Colors.green,
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
                            'Oyiba Pepper',
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
                            'Sherma Laset',
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
                            'Ced Hand',
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
                            'Acitve',
                            style: TextStyle(
                              color: Colors.green,
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
                            'S3,000',
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
      ),
    );
  }
}
