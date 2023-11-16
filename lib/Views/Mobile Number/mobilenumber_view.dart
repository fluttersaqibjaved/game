import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gametime/Views/Mobile%20Number/Verification_view.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';

class MobileNumberView extends StatefulWidget {
  const MobileNumberView({super.key});

  @override
  State<MobileNumberView> createState() => _MobileNumberViewState();
}

class _MobileNumberViewState extends State<MobileNumberView> {
  final TextEditingController _phoneNumberController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      
        body: Stack(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
            color: Color(0xF4F8FB),
            ),
            Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Text(
          'Mobile Number',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          'Confirm the country code and',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
              
          ),
        ),
        Text(
          'enter your mobile number',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
              
          ),
        ),
             SizedBox(height: 5.h),
           Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.0),
        child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
      'YOUR NUMBER', 
      style: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
    ), 
    SizedBox(height:1.h),
              IntlPhoneField(
                  controller: _phoneNumberController,
                  initialCountryCode: 'PK',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                  keyboardType: TextInputType.phone,
                ),
            ],
          ),
           ),
          
        SizedBox(height: 4.h),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              Positioned.fill(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), 
                                  child: Container(
                                    color: Colors.pinkAccent.withOpacity(0.2), 
                                  ),
                                ),
                              ),
                            AlertDialog(
  title: Text('Phone number Confirmation'),
  content: Text('We will send a verification code to the following number:'),
  actions: <Widget>[
   
      Divider(
        color: Colors.pink,
        height: 0, 
      ),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: Text(
              'Cancel',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Container(
            width: 0.5, 
            height: 7.h, 
            color: Colors.pink,
          ),
          TextButton(
            child: Text(
              'OK',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => VerificationView(),
                ),
              );
            },
          ),
        ],
      ),
    
  ],
),

                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 50.w,
                      height: 8.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.sp),
                        color: Colors.pinkAccent,
                      ),
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                      ],
                    ),
                  ),
                
               ]
             ),
    );
  }
}