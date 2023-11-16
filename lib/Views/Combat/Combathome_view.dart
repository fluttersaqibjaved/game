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
       appBar: AppBar(
        backgroundColor: Colors.white, // Set the background color of the AppBar to white
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10.0), // Define the preferred height of the bottom area
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/Hamburger.png',
                  fit: BoxFit.fitWidth,
                  width: 8.0.w,
                ),
                SizedBox(width: 5.0.w),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Ellipse.png',
                      fit: BoxFit.fitWidth,
                      width: 8.0.w,
                    ),
                    SizedBox(width: 2.0.w),
                    Text(
                      'Stone Stellar',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 8.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body:
       Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            color: Color(0xFFF4F8FB), 
          ),
                   SingleChildScrollView(
        child:
                   Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child:
              Column(
                    children: [
                      Container(
                        width: 100.w,
                        height: 20.h,
                        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pinkAccent,
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
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: 10.w,
          child: Image.asset(
            'assets/images/Forward Arrow.png',
            fit: BoxFit.contain,
          ),
        ),
                              ],
                            ),
                             SizedBox(
          height: 35.h,
          width: 25.w,
          child: Image.asset(
            'assets/images/Image (1).png',
            // fit: BoxFit.contain,
          ),
        ),
                        ],
                      ),
                      ),
                      ),
              
              
                     Container(
                    width: 100.w,
                    height: 20.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pinkAccent,
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
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: 10.w,
          child: Image.asset(
            'assets/images/Forward Arrow.png',
            fit: BoxFit.contain,
          ),
        ),
                          ],
                        ),
                         SizedBox(
          height: 35.h,
          width: 25.w,
          child: Image.asset(
            'assets/images/hjkhImage.png',
            // fit: BoxFit.contain,
          ),
        ),
                    ],
              ),
              ),
              ),
                     Container(
                    width: 100.w,
                    height: 20.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pinkAccent,
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
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: 10.w,
          child: Image.asset(
            'assets/images/Forward Arrow.png',
            fit: BoxFit.contain,
          ),
        ),
                          ],
                        ),
                         SizedBox(
          height: 55.h,
          width: 25.w,
          child: Image.asset(
            'assets/images/bugbuImage.png',
            // fit: BoxFit.contain,
          ),
        ),
                    ],
              ),
              ),
              ),
                     Container(
                    width: 100.w,
                    height: 20.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pinkAccent,
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
      crossAxisAlignment: CrossAxisAlignment.center,
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
          width: 10.w,
          child: Image.asset(
            'assets/images/Forward Arrow.png',
            fit: BoxFit.contain,
          ),
        ),
                          ],
                        ),
                         SizedBox(
          height: 35.h,
          width: 25.w,
          child: Image.asset(
            'assets/images/hbiuhuih.png',
            // fit: BoxFit.contain,
          ),
        ),
                    ],
              ),
              ),
              ),
                    ]
              ),
                   ),
                   ),     
        ]
      ),
         bottomNavigationBar: BottomAppBar(
          color: Colors.white.withOpacity(0.9), 
        child: SizedBox(
  height: 15.h,
  width: 100.w,
  child: Stack(
    children: [
      Image.asset(
        'assets/images/Container- Task Bar.png',
        fit: BoxFit.cover,
        // Adjust fit as needed
      ),
       Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                    'assets/images/Statistics Icon.png',
                    width: 24,
                    height: 24,
              ),
              Text('Statistics',style: TextStyle(color: Colors.white),),
            ],
          ),
          BottomAppBar(),
          SizedBox(width: 2.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                    'assets/images/Location_Pin.png',
                    width: 24,
                    height: 24,
              ),
              Text('Discover',style: TextStyle(color: Colors.white),),
            ],
          ),
          
         Column(
  children: [
    Stack(
      children: [
        Image.asset(
          'assets/images/Base Ellipse.png',
          width: 74,
          height: 74,
        ),
        Positioned(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
          child: Image.asset(
            'assets/images/Schedule.png',
            width: 30,
            height: 30,
          ),
        ),
      ],
    ),
  ],
),

          SizedBox(width: 12.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                    'assets/images/Chat.png',
                    width: 24,
                    height: 24,
              ),
              Text('Chat',style: TextStyle(color: Colors.white),),
            ],
          ),
          SizedBox(width: 2.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                    'assets/images/Profile.png',
                    width: 24,
                    height: 24,
              ),
              Text('Profile',style: TextStyle(color: Colors.white),),
            ],
          ),
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



     
      
   