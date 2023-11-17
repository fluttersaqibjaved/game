import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {

TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:  Stack(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
            color: Color(0xF4F8FB),
            ),
              Padding(
  padding: EdgeInsets.only(top: 80.0), 
  child:
      Center(
        child: 
        Column(
        children: [
           SizedBox(
        height: 30.h,
        width: 100.w,
        child: Padding(
          padding: EdgeInsets.only(left: 10.0), 
          child: Image.asset(
            'assets/images/ghdfhbgisg.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      SizedBox(height: 6.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.0),
                        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot Password?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  SizedBox(height: 2.h),
        Text(
          'Enter your email address below and we will',
          style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                  fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'sen you an email with instructions on',
          style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                  fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'how to change your password',
          style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                  fontWeight: FontWeight.bold,
          ),
        ),
            SizedBox(height: 4.h),
           
                   TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              
            ),
          ),
             
              ],
            ),
        ),
             SizedBox(height: 4.h),
              TextButton(
                        onPressed: () {
                         
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
                            'Recover Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
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