import 'package:flutter/material.dart';
import 'package:gametime/Views/Drawer/Profile_view.dart';
import 'package:sizer/sizer.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(padding: EdgeInsets.only(top: 50),
       child: Column(
        children: [
           Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child:
          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                
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
                           SizedBox(height: 2.h),
                                Text(
                            'Payments',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '& Billings',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 2.h),
                              Text(
                                'Easily add new or edit current one.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                               Container(
                                    width: 100.w,
                                    height: 25.h,
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
                                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                                  child:
                                   
                                      
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Name',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                                    
                                                ),
                                              ),
                                               SizedBox(height: 1.h),
                                                 Text(
                                            'Stone Stellar',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                           ),
                                            SizedBox(height: 2.h),
                                                Text(
                                            'Number',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                                                
                                            ),
                                          ),
                                           SizedBox(height: 1.h),
                                             Text(
                                            '4445 XXXX XXXX XXX',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                           ),
                                            SizedBox(height: 2.h),
                                             Text(
                                            'UNITED BANK FOR AFRICA',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                           ),
                                            ],
                                          ),
                                  ),
                                  ),
                                    TextButton(
                                     onPressed: () {
                                        },
                                        child: Text(
                                          '*Click on card to edit or add new card*',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: Colors.black,
                                            fontSize: 15,
                                          
                                          ),
                                        ),
                                      ),
                            ],
          ),
           ),
           TextButton(
                    onPressed: () async {
                       Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProfileView(),
                            ),
                          );
                    },
                         child: Container(
                          alignment: Alignment.center,
                          width: 50.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.pink,
                          ),
                          child: Text('Update',
                              style: TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                       ),
        ],
      ),
      ),
    );
  }
}