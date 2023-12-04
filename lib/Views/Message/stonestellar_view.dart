import 'package:flutter/material.dart';
import 'package:gametime/Views/Message/sms_view.dart';
import 'package:sizer/sizer.dart';

class StoneStellarView extends StatefulWidget {
  const StoneStellarView({super.key});

  @override
  State<StoneStellarView> createState() => _StoneStellarViewState();
}

class _StoneStellarViewState extends State<StoneStellarView> {
 bool isTextFieldEmpty = true;
 TextEditingController _textEditingController = TextEditingController();




 @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_textFieldListener);
     
  }

  void _textFieldListener() {
    setState(() {
      isTextFieldEmpty = _textEditingController.text.isEmpty;
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  backgroundColor: Colors.white,
  
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Stone Stellar',
            style: TextStyle(color: Colors.pink),
          ),
          Text(
            'Online Now',
            style: TextStyle(color: Colors.black,fontSize: 15,),
          ),
        ],
      ),
    ],
  ),
  centerTitle: true,
  leading: Padding(
    padding: EdgeInsets.only(left: 10.0),
    child: IconButton(
      icon: Icon(
        Icons.close,
        color: Colors.pinkAccent,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  ),
  actions: [
    Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: IconButton(
        icon: Icon(
          Icons.call,
          color: Colors.pinkAccent,
        ),
        onPressed: () {
           Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SmsView(),
                            ),
                          );
        },
      ),
    ),
  ],
),
                          body:  Stack(
      children: [
          Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
                            children: [
                               SingleChildScrollView(
       
        child: Column(
          
          children: [
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
            Padding (
        padding: EdgeInsets.only(left: 160.0),
        child:
             Container(
                              alignment: Alignment.center,
                              width: 50.w,
                              height: 12.h,
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('You haventt answered',
                                      style: TextStyle(color: Colors.white, fontSize: 15)),
                                       Text('my question',
                                  style: TextStyle(color: Colors.white, fontSize: 15)),
                                ],
                              ),
                                                      ),
            ),
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
                                                        
                                                      Column(
                                                        children: [
                                                            Padding (
        padding: EdgeInsets.only(left: 160.0),
        child:
                                                          Container(
                                                                                        alignment: Alignment.center,
                                                                                        width: 50.w,
                                                                                        height: 7.h,
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.circular(10.0),
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
                                                                                        child: Text('Have you?',
                                                                                            style: TextStyle(color: Colors.white, fontSize: 15)),
                                                          ),
                                                            ),
                                                            SizedBox(height: 2.h),
                                                              Padding (
        padding: EdgeInsets.only(left: 320.0),
        child:
                                                       Row(
                                  children: [
                                    Text(
                                                '11:57',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.pinkAccent,
                                                  
                                                ),
                                              ),
                                              SizedBox(width: 1.w),
                                             Icon(
                                            Icons.check, 
                                            size: 20, 
                                            color: Colors.green,
                                          ),
                                  ],
                                ),
                                                          ),
                                                        ],
                                                      ),
                                                        
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       Padding(
    padding: EdgeInsets.only(top: 100.0),
    child:
                                      Column(
                                       
                                        children: [
                                          SizedBox(
                                                    height: 10.h,
                                                    width: 10.w,
                                                    child: Image.asset(
                                                      'assets/images/Ellipse.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                        ],
                                      ),
                                       ),
                                              SizedBox(width: 5.w),
                                               Container(
                                width: 60.w,
                                height: 20.h,
                                color: Colors.blue,
                              child:  Row(
                                children: [
                                  Row(
                                    children: [
                                      Column(children: [
                                      Container(
                                         width: 15.w,
                                                                      height: 5.h,
                                        color: Colors.black,
                                      ),
                                        Container(
                                           width: 15.w,
                                                                      height: 5.h,
                                        color: Colors.white,
                                      ),
                                       Container(
                                         width: 15.w,
                                                                      height: 5.h,
                                        color: Colors.black,
                                      ),
                                        Container(
                                           width: 15.w,
                                                                      height: 5.h,
                                        color: Colors.white,
                                      ),
                                      ],),
                                        Column(children: [
                                           Container(
                                           width: 15.w,
                                height: 5.h,
                                        color: Colors.white,

                                      ),
                                         Container(
                                         width: 15.w,
                                height: 5.h,
                                        color: Colors.black,
                                      ),
                                        Container(
                                           width: 15.w,
                                height: 5.h,
                                        color: Colors.white,

                                      ),
                                       Container(
                                         width: 15.w,
                                height: 5.h,
                                        color: Colors.black,
                                      ),
                                       
                                     ],),
                                    ],
                                  ),
                               Column(children: [
                                 Container(
                                   width: 15.w,
                                height: 5.h,
                                    color: Colors.black,
                                  ),
                                    Container(
                                       width: 15.w,
                                height: 5.h,
                                    color: Colors.white,
                                  ),
                                   Container(
                                     width: 15.w,
                                height: 5.h,
                                    color: Colors.black,
                                  ),
                                    Container(
                                       width: 15.w,
                                height: 5.h,
                                    color: Colors.white,
                                  ),
                              ],),
                               Column(children: [
                                 Container(
                                       width: 15.w,
                                height: 5.h,
                                    color: Colors.white,
                                  ),
                                 Container(
                                   width: 15.w,
                                height: 5.h,
                                    color: Colors.black,
                                  ),
                                    Container(
                                       width: 15.w,
                                height: 5.h,
                                    color: Colors.white,
                                  ),
                                   Container(
                                     width: 15.w,
                                height: 5.h,
                                    color: Colors.black,
                                  ),
                              ],),
                                ],
                              ),
                                 ),
                                    ],
                                  ),
        ),
                                  SizedBox(height: 5.h,),
          ],
        ),
        
      ),
                            SizedBox(height: 3.h),
                                Divider(
                                  color: Colors.pinkAccent,
                                ),
                                 
                                      Row(
                                  children: <Widget>[
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                                        child: TextField(
                                          controller: _textEditingController,
                                          decoration: InputDecoration.collapsed(
                                            hintText: 'Please type something...',
                                          ),
                                          textInputAction: TextInputAction.send,
                                          onTap: () {
    if (isTextFieldEmpty) {
      print('Microphone icon tapped!');
      
    } else {
      print('Message sent!');
      
    }
  },
                                        ),
                                      ),
                                    ),
                                      SizedBox(width: 2.w),
                                     TextButton(
  onPressed: () {
    if (isTextFieldEmpty) {
      print('Recording started!');
    } else {
      print('Message sent!');
    }
  },
  child: 
      Icon(
        isTextFieldEmpty ? Icons.mic : Icons.send, 
        color: Colors.red,
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