import 'package:flutter/material.dart';
import 'package:gametime/Views/Message/videocall_view.dart';
import 'package:gametime/Views/Message/voicecall_view.dart';
import 'package:sizer/sizer.dart';

class UserCallView extends StatefulWidget {
  const UserCallView({super.key});

  @override
  State<UserCallView> createState() => _UserCallViewState();
}

class _UserCallViewState extends State<UserCallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          Container(
            color: Color(0xFFFF3F81),
          ),
          Padding(
            padding:EdgeInsets.only(top: 100),
            child: 
            Column(
              children: [
             Padding(
          padding: EdgeInsets.only(left: 320.0), 
          child:   GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); 
            },
            child:
            Image.asset(
                  'assets/images/close.png',
                  fit: BoxFit.fitWidth,
                  width: 12.0.w,
                ),
           ),
           ),
            SizedBox(height: 15.h),
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text(
                         'User Call via?',
                         style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                  
                         ),
                       ),
                       SizedBox(height: 7.h),
                          TextButton(
                    onPressed: () async {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                     builder: (context) => VoiceCallView(),
                    ),);
                    },
                         child:
               Container(
                 width: 40.w,
                 height: 15.h,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(0.1),
                       spreadRadius: 2,
                       blurRadius: 3,
                       offset: Offset(0, 2),
                     ),
                   ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     IconButton(
                      icon: Icon(Icons.call),
                      iconSize: 30,
                      color: Colors.red,
                      onPressed: () {
                        Navigator.of(context).push(
                      MaterialPageRoute(
                     builder: (context) => VoiceCallView(),
                    ),);
                        print('Call accepted');
                      },
                    ),  
                    SizedBox(height: 5),
                    Text(
                      'Voice',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        
                      ),
                    ),
                  ]
                ),
                 ),
           ),
                 SizedBox(height: 1.h),
                   TextButton(
                    onPressed: () async {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                     builder: (context) => VideoCallView(),
                    ),);
                    },
                         child:
                   Container(
                 width: 40.w,
                 height: 15.h,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.black.withOpacity(0.1),
                       spreadRadius: 2,
                       blurRadius: 3,
                       offset: Offset(0, 2),
                     ),
                   ],
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    
                     Icon(
              Icons.video_call,
              size: 30,
              color: Colors.red,
            ),
                    SizedBox(height: 5),
                    Text(
                      'Video',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        
                      ),
                    ),
                  ]
                ),
                 ),
                   ),
             ],
           ),
        ],
      ),
          ),
        ]
      ),
    );
  }
}