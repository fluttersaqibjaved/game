import 'package:flutter/material.dart';
import 'package:gametime/Views/Combat/Combat.dart';
import 'package:gametime/Views/Login%20Detail/forgotpassword_view.dart';
import 'package:gametime/Views/Login%20Detail/register_view.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isObscure = true; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  
      Stack(
        children: [
            Container(
              width: 100.w,
              height: 100.h,
            color: Color(0xF4F8FB),
            ),
              Center(
            child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                        width: 100.w,
                         child: Padding(
          padding: EdgeInsets.only(right: 120.0), 
                        child: Image.asset(
                          'assets/images/Imagelog.png',
                          fit: BoxFit.contain,
                        ),
                         ),
                      ),
                      SizedBox(height: 3.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back!',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            'Hi Kindly login to continue battle',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              
                            ),
                          ),
                          SizedBox(height: 3.h),
                            Container(
                      width: 280, 
                      height: 50, 
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue), 
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink), 
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h),
Container(
  width: 280,
  height: 50,
  child: TextField(
    obscureText: _isObscure, 
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 15,
        
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.pink),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          _isObscure ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _isObscure = !_isObscure; 
          });
        },
      ),
    ),
  ),
),
                        ],
                      ),
                      
                   
                    SizedBox(height: 1.h),
                      Padding(
                     padding: EdgeInsets.only(left: 150.0), 
                      child: TextButton(
                    onPressed: () async {
                         Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordView(),
                            ),
                          );
                    },
                     child:  Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                       ),
                      ),
                      SizedBox(height: 1.h),
                        TextButton(
                    onPressed: () async {
                       Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Combat(),
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
                          child: Text('Lets Combat!',
                              style: TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                       ),
                       SizedBox(height: 1.h),
                         Text(
                        'Connect With:',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            SizedBox(
        height: 10.h,
        width: 10.w,
        child: Image.asset(
            'assets/images/Google+.png',
            fit: BoxFit.contain,
          ),
      ),
      SizedBox(width: 3.w),
        SizedBox(
        height: 10.h,
        width: 10.w,
        child:  Image.asset(
           'assets/images/Group 394.png',
            fit: BoxFit.contain,
          ),
      ),
                        ],
                      ),
                        Text(
                        'Dont have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          
                        ),
                      ),
                        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterView()),
            );
          },
          child: Text(
            'Create account',
            style: TextStyle(
              color: Colors.pink,
              fontSize: 20,
              fontWeight: FontWeight.bold,
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