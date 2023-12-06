import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PublishView extends StatefulWidget {
  const PublishView({super.key});

  @override
  State<PublishView> createState() => _PublishViewState();
}

class _PublishViewState extends State<PublishView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:   Stack(
               children: [
               Container(
  color: Color(0xFFFF3F81).withOpacity(0.7),
),

            Padding(
  padding: EdgeInsets.only(top: 60.0), 
  child: Center(
        child:
       Column(
        children: [
            Padding(
          padding: EdgeInsets.only(left: 290.0), 
          child:   GestureDetector(
            onTap: () {
              Navigator.of(context).pop(); 
            },
            child:
            Image.asset(
                  'assets/images/close.png',
                  fit: BoxFit.fitWidth,
                  width: 8.0.w,
                ),
           ),
           ),
           SizedBox(height: 3.h),
           SizedBox(
          height: 20.h,
          width: 30.w,
          child: Image.asset(
            'assets/images/Successw.png',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 3.h),
            Text(
          'Published',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        
        Text(
          'Successful',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
         SizedBox(height: 4.h),
        Text(
          'Wanna change/edit your',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
              
          ),
        ),
        Text(
          'scheduled game before it',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
              
          ),
        ),
        Text(
          'begins?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
              
          ),
        ),
         SizedBox(height: 4.h),
                            TextButton(
                            onPressed: () async {   
                          //      Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => DiscoverCombatView(),
                          //   ),
                          // );
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
                                  child: Text('Statistics',
                                      style: TextStyle(color: Colors.white, fontSize: 20)),
                                ),
                               ),
                                       ],
                                     ),
  ),
            ),
                            ]
      ),
    );
  }
}