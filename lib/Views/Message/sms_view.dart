import 'package:flutter/material.dart';
import 'package:gametime/Views/Message/usercall_view.dart';
import 'package:sizer/sizer.dart';

class SmsView extends StatefulWidget {
  const SmsView({Key? key}) : super(key: key);

  @override
  State<SmsView> createState() => _SmsViewState();
}

class _SmsViewState extends State<SmsView> {
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
                              builder: (context) => UserCallView(),
                            ),
                          );
        },
      ),
    ),
  ],
),
      body: SingleChildScrollView(
       
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
                                                        SizedBox(height: 2.h),
  //                                                        
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
                                                                        padding: EdgeInsets.only(left: 50.0),
                                                                        child: 
                                                                                                Row(
                                                                                                  children: [
                                                                                                      Padding(
    padding: EdgeInsets.only(top: 90.0),
    child:
                                                                                                    SizedBox(
                                                                                                              height: 10.h,
                                                                                                              width: 10.w,
                                                                                                              child: Image.asset(
                                                                                                                'assets/images/Ellipse.png',
                                                                                                                fit: BoxFit.contain,
                                                                                                              ),
                                                                                                            ),
                                                                                                      ),
                                                                                                      Container(
                                                                                                    width: 70.w,
                                                                                                    height: 15.h,
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
                                                                       
                                                                                                      Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'im really sorrt for taking so long,',
                                                                                                        style: TextStyle(
                                                                                                          color: Colors.white,
                                                                                                          fontSize: 15,
                                                                                                          
                                                                                                        ),
                                                                                                      ),
                                                                                                      
                                                                                                      Text(
                                                                                                        'based on our previous discusion,',
                                                                                                        style: TextStyle(
                                                                                                          color: Colors.white,
                                                                                                          fontSize: 15,
                                                                
                                                                                                        ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        'i think the Gaming experience',
                                                                                                        style: TextStyle(
                                                                                                          color: Colors.white,
                                                                                                          fontSize: 15,
                                                                                                                           
                                                                                                        ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        'needs to be improved asap!',
                                                                                                        style: TextStyle(
                                                                                                          color: Colors.white,
                                                                                                          fontSize: 15,
                                                                                                          
                                                                                                        ),
                                                                                                         ),
                                                                                                    ],
                                                                      ),
                                                                      ),
                                                                      ),
                                                                                                  ],
                                                                                                ),
                                                                ),
                                                                 Padding (
        padding: EdgeInsets.only(left: 320.0),
        child:
                               Row(
                                  
                                  children: [
                                    Text(
                                                '07:57',
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
                                                              Column(
                                                                children: [
                                                                  Padding (
                                                                          padding: EdgeInsets.only(left: 70.0),
                                                                          child:
                                                                                                    Container(
                                                                                                  width: 70.w,
                                                                                                  height: 15.h,
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
                                                                                                 
                                                                                                    Column(
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Yes! Infact that has been what',
                                                                                                      style: TextStyle(
                                                                                                        color: Colors.white,
                                                                                                        fontSize: 15,
                                                                                                        
                                                                                                      ),
                                                                                                    ),
                                                                                                    
                                                                                                    Text(
                                                                                                      'everyones been talking bout well',
                                                                                                      style: TextStyle(
                                                                                                        color: Colors.white,
                                                                                                        fontSize: 15,
                                                                                                                          
                                                                                                      ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      'the graphics might as well need',
                                                                                                      style: TextStyle(
                                                                                                        color: Colors.white,
                                                                                                        fontSize: 15,
                                                                                                                         
                                                                                                      ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      'Improvement though',
                                                                                                      style: TextStyle(
                                                                                                        color: Colors.white,
                                                                                                        fontSize: 15,
                                                                                                        
                                                                                                      ),
                                                                                                       ),
                                                                                                  ],
                                                                                                ),
                                                                                                ),
                                                                                                ),
                                                                  ),
                                                              Padding (
        padding: EdgeInsets.only(left: 320.0),
        child:
                                Row(
                                  
                                  children: [
                                    Text(
                                                '07:57',
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
      
                      bottomNavigationBar: BottomAppBar(
  color: Colors.red, 
  child: Container(
    height: 80.0, 
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(Icons.mic),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: ListTile(
                    onTap: () {
                      print('Start recording');
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.mic),
                    title: Text('Start Recording'),
                  ),
                );
              },
            );
          },
          color: Colors.white,
        ),
        SizedBox(width: 15.w),
        Text(
          'Release to clear',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    ),
  ),
),

        
      
    );
  }
}
