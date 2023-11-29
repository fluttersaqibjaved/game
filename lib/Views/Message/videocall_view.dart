import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VideoCallView extends StatefulWidget {
  const VideoCallView({super.key});

  @override
  State<VideoCallView> createState() => _VideoCallViewState();
}

class _VideoCallViewState extends State<VideoCallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFFF3F81),
          ),
       
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             Text(
          'incoming video call...',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          'Scott Brown',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6.h),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Center(
              child:     Icon(
              Icons.video_call,
              size: 30,
              color: Colors.white,
            ),
            ),
                ),
               SizedBox(width: 10.w),
                Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: Center(
              child:  Icon(
              Icons.video_call,
              size: 30,
              color: Colors.white,
            ),
            ),
                ),
              ],
            ),
        ]
       ),
        ],
      ),
    );
  }
}