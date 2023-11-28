import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
     body: 
      SingleChildScrollView(
                child: Padding(
  padding: EdgeInsets.only(top: 40.0),
  child:
                    
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                 Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
               child:
                              GestureDetector(
            onTap: () {
              Navigator.of(context).pop();  
            },
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(
                'assets/images/Frame 9.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
                                 ),
                           SizedBox(height: 2.h),
                            Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
               child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Chat',
                                      style: TextStyle(
                                       color: Colors.pinkAccent,
                                       fontSize: 30,
                                        fontWeight: FontWeight.bold
                                          ),
                                         ),
                                       Icon(
                                     Icons.edit,
                                    size: 30, 
                                    color: Colors.pinkAccent,
                                  ),
                                  ],
                                ),
                            ),
                            SizedBox(height: 1.h),
                            Divider(
                              color: Colors.pink,
                              height: 0, 
                            ),
                            SizedBox(height: 2.h),
                           Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(
      width: 100.w, 
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 20,
            color: Colors.black,
          ),
          hintText: 'Search for messages or users',
          hintStyle: TextStyle(fontSize: 18, color: Colors.black),
        border: UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.red),
),
focusedBorder: UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.pink),
),

        ),
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    ),
  ],
),     
                                SizedBox(height: 2.h),
                                   Dismissible(
  key: UniqueKey(), 
  onDismissed: (DismissDirection direction) {
    
  },
  background: Container(
    color: Colors.red, 
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Icon(
      Icons.delete,
      color: Colors.white,
    ),
  ),
                               child:   Row(
                            children: [
                             Image.asset(
                      'assets/images/Group 395.png',
                      fit: BoxFit.fitWidth,
                      width: 22.0.w,
                    ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children: [
                                  Text(
                                    'Scott Brown',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.pinkAccent,
                                      
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                   Text(
                                        '07:21',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.pinkAccent,
                                          
                                        ),
                                      ),
                                      SizedBox(width: 3.w),
                                     Icon(
                                    Icons.check, 
                                    size: 20, 
                                    color: Colors.green,
                                  ), 
                                  Icon(
                                    Icons.check, 
                                    size: 20, 
                                    color: Colors.green,
                                  ),
                                      ]
                                       ),
                                       SizedBox(height: 0.5.h),
                                         Text(
                                        'Halo 5 gameplay is so swift',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          
                                        ),
                                       ),
                                         Text(
                                        'and easy.',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          
                                        ),
                                       ),
                                      ],
                                    ),
                                ],
                              ),
                                   ),
                              SizedBox(height: 2.h),
                              Divider(
                              color: Colors.pink,
                              height: 0, 
                            ),
                            SizedBox(height: 2.h),
                             Dismissible(
  key: UniqueKey(), 
  onDismissed: (DismissDirection direction) {
    
  },
  background: Container(
    color: Colors.red, 
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Icon(
      Icons.delete,
      color: Colors.white,
    ),
  ),
                               child:
                              Row(
                            children: [
                             Image.asset(
                      'assets/images/Group 395.png',
                      fit: BoxFit.fitWidth,
                      width: 22.0.w,
                    ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children: [
                                  Text(
                                    'Phillip Mandella',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.pinkAccent,
                                      
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                   Text(
                                        '02:28',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.pinkAccent,
                                          
                                        ),
                                      ),
                                      SizedBox(width: 3.w),
                                     Icon(
                                    Icons.check, 
                                    size: 20, 
                                    color: Colors.green,
                                  ), SizedBox(height: 2.h),
                                      ]
                                       ),
                                       SizedBox(height: 0.5.h),
                                         Text(
                                        'Justice league chapter 41 is',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          
                                        ),
                                       ),
                                         Text(
                                        'a no go area am stucked!',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          
                                        ),
                                       ),
                                      ],
                                    ),
                                ],
                              ),
                             ),
                              SizedBox(height: 2.h),
                              Divider(
                              color: Colors.pink,
                              height: 0, 
                            ),
                            SizedBox(height: 2.h),
                             Dismissible(
  key: UniqueKey(), 
  onDismissed: (DismissDirection direction) {
    
  },
  background: Container(
    color: Colors.red, 
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Icon(
      Icons.delete,
      color: Colors.white,
    ),
  ),
                               child:
                              Row(
                                
                            children: [
                                Image.asset(
                      'assets/images/Group 395.png',
                      fit: BoxFit.fitWidth,
                      width: 22.0.w,
                    ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children: [
                                  Text(
                                    'Ar Katharine',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.pinkAccent,
                                      
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                   Text(
                                        '07:21',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.pinkAccent,
                                          
                                        ),
                                      ),
                                      SizedBox(width: 3.w),
                                     Icon(
                                    Icons.check, 
                                    size: 20, 
                                    color: Colors.green,
                                  ), 
                                      ]
                                       ),
                                       
                                         Text(
                                        'please can you share me',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          
                                        ),
                                       ),
                                         Text(
                                        'our gaming techquies?',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          
                                        ),
                                       ),
                                      ],
                                    ),
                                ],
                              ),
                             ),
                             SizedBox(height: 2.h),
                                Divider(
                                color: Colors.pink,
                                height: 0, 
                              ),
                              SizedBox(height: 2.h),
                               Dismissible(
  key: UniqueKey(), 
  onDismissed: (DismissDirection direction) {
    
  },
  background: Container(
    color: Colors.red, 
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Icon(
      Icons.delete,
      color: Colors.white,
    ),
  ),
                               child:
                                Row(
                            children: [
                             Image.asset(
                      'assets/images/Ellipse.png',
                      fit: BoxFit.fitWidth,
                      width: 22.0.w,
                    ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children: [
                                  Text(
                                    'Gamers Zone',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.pinkAccent,
                                      
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                   Text(
                                        '01.11.2019',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.pinkAccent,
                                          
                                        ),
                                      ),
                                      SizedBox(width: 2.w),
                                     Icon(
                                    Icons.check, 
                                    size: 20, 
                                    color: Colors.green,
                                     ),
                                      ]
                                       ),
                                       SizedBox(height: 0.5.h),
                                         Text(
                                        'New competition mode and',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          
                                        ),
                                       ),
                                         Text(
                                        'ratings comming soon',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          
                                        ),
                                       ),
                                      ],
                                    ),
                                ],
                              ),
                               ),
                              SizedBox(height: 2.h),
                              Divider(
                              color: Colors.pink,
                              height: 0, 
                            ),
                             Dismissible(
  key: UniqueKey(), 
  onDismissed: (DismissDirection direction) {
    
  },
  background: Container(
    color: Colors.red, 
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Icon(
      Icons.delete,
      color: Colors.white,
    ),
  ),
                               child:
                              Row(
                            children: [
                             Image.asset(
                      'assets/images/Ellipse.png',
                      fit: BoxFit.fitWidth,
                      width: 22.0.w,
                    ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      children: [
                                  Text(
                                    'Tayeeb Ibrahim',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.pinkAccent,
                                      
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                   Text(
                                        '23.09.2019',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.pinkAccent,
                                          
                                        ),
                                      ),
                                      SizedBox(width: 2.w),
                                     Icon(
                                    Icons.check, 
                                    size: 20, 
                                    color: Colors.green,
                                  ), 
                                  Icon(
                                    Icons.check, 
                                    size: 20, 
                                    color: Colors.green,
                                  ),
                                      ]
                                       ),
                                       SizedBox(height: 3.h),
                                      ],
                                    ),
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