import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VoiceCallView extends StatefulWidget {
  const VoiceCallView({super.key});

  @override
  State<VoiceCallView> createState() => _VoiceCallViewState();
}

class _VoiceCallViewState extends State<VoiceCallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
        Container(
          color: Color(0xFFFF3F81),
        ),
      Center(
        child:
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           
             Text(
          'incoming voice call...',
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
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
        SizedBox(height: 7.h),
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
              child:    IconButton(
                  icon: Icon(Icons.call_end),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {
                   
                    
                    print('Call declined');
                  },
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
              child:  IconButton(
                  icon: Icon(Icons.call),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {
                   
                    print('Call accepted');
                  },
                ),
            ),
                ),
              ]
          ),
      ],
      ),
  ),
        
        ]
      ),
    );
  }
}