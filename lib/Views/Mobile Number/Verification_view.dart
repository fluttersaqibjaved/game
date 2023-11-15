import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gametime/Views/Mobile%20Number/VerificationSuccessful_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class VerificationView extends StatefulWidget {
  const VerificationView({super.key});

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {


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
          'Verification code',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          'Sms verification Code has ben',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        Text(
          'send to:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
              
          ),
        ),
         SizedBox(height: 5.h),
           Text(
          'RESEND',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.pink,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 3.h),
         Padding(
    padding: EdgeInsets.symmetric(horizontal: 70.0),
    child:
   Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  
  children: [
    Text(
      'PIN CODE', 
      style: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
    ), 
    SizedBox(height:1.h),
    Center(
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        onChanged: (value) {
          print(value);
        },
        onCompleted: (value) {
          print("Completed: $value");
        },
      ),
    )
  ],
)
             ),

        SizedBox(height: 5.h),
         TextButton(
                    onPressed: () async {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => VerificationSuccessfulView(),
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
                          child: Text('NEXT',
                              style: TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                       ),
      ],
    ),
             ),
         ],
      ),
    );
  }
}