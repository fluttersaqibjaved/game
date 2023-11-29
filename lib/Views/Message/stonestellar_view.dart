import 'package:flutter/material.dart';
import 'package:gametime/Views/Message/sms_view.dart';
import 'package:sizer/sizer.dart';

class StoneStellarView extends StatefulWidget {
  const StoneStellarView({super.key});

  @override
  State<StoneStellarView> createState() => _StoneStellarViewState();
}

class _StoneStellarViewState extends State<StoneStellarView> {

  
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
                          body:     Padding(
                          padding: EdgeInsets.only(right: 30.0),
                          child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
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
                                                      
                                                      SizedBox(height: 2.h),
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
                                                      SizedBox(height: 3.h),
                                                       Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                                '11:57',
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
                                  ],
                                ), 
                                SizedBox(height: 15.h),
                              Divider(
                              color: Colors.pink,
                              height: 0, 
                            ),
                            SizedBox(height: 2.h),
                         Row(
        children: <Widget>[
        
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
               
                decoration: InputDecoration.collapsed(
                  hintText: 'Plaese type something...',
                ),
                textInputAction: TextInputAction.send,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {
            showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      content: 
            ListTile(
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
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
                                ]
                              ),
                          ),                       
    );
  }
}