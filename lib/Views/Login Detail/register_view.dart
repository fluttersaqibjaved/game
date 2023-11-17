import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gametime/Views/Login%20Detail/login_view.dart';
import 'package:gametime/Views/Mobile%20Number/mobilenumber_view.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sizer/sizer.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
   bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;
   TextEditingController _nameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
     _nameController.dispose();
    _usernameController.dispose();
    _numberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SingleChildScrollView(
        child: Stack(
        children: [
            Container(
              width: 100.w,
              height: 100.h,
            color: Color(0xF4F8FB),
            ),
              Center(
            child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child:
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 100.w,
                         child: Padding(
          padding: EdgeInsets.only(right: 40.0), 
                        child: Image.asset(
                          'assets/images/Imageacc.png',
                          fit: BoxFit.contain,
                        ),
                         ),
                      ),
                      SizedBox(height: 3.h),
                     Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 2.h),
                          Text(
                            'Hi, Kindly fill in the form to proceed',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                           Text(
                            'combat',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                           SizedBox(height: 4.h),
                       TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Full Name',
            ),
           inputFormatters: <TextInputFormatter>[
  FilteringTextInputFormatter.allow(RegExp(r'[a-z0-9]')),
],

          ),
          SizedBox(height: 1.h),
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'User Name',
            ),
            inputFormatters: <TextInputFormatter>[
  FilteringTextInputFormatter.allow(RegExp(r'[a-z0-9]')),
],

          ),
                    SizedBox(height: 1.h),
                       Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey), 
                ),
              ),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber); 
                },
                inputDecoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone Number',
                ),
              ),
            ),
                      SizedBox(height: 1.h),
                     TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              
            ),
          ),
                    SizedBox(height: 1.h),
                    TextField(
            controller: _passwordController,
            obscureText: _isPasswordHidden,
            decoration: InputDecoration(
              labelText: 'Password',
              
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordHidden ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: _togglePasswordVisibility,
              ),
            ),
          ),
SizedBox(height: 1.h),
 TextField(
            controller: _confirmPasswordController,
            obscureText: _isConfirmPasswordHidden,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              
              suffixIcon: IconButton(
                icon: Icon(
                  _isConfirmPasswordHidden
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: _toggleConfirmPasswordVisibility,
              ),
            ),
          ),
                        ],
                      ),
                     ),
                      SizedBox(height: 3.h),
                        TextButton(
                    onPressed: () async {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MobileNumberView(),
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
                          child: Text('Create Account',
                              style: TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                       ),
                       SizedBox(height: 3.h),
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
                          Image.asset(
                              'assets/images/Google+.png',
                              height: 10.h,
                              width: 10.w,
                            ),
                            SizedBox(width: 2.w),
                            Image.asset(
                              'assets/images/Group 394.png',
                               height: 10.h,
                              width: 10.w,
                            ),
                        ],
                      ),
                        Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          
                        ),
                      ),
                       TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginView()),
            );
          },
          child: Text(
            'Login',
            style: TextStyle(
              
              color: Colors.pink,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
                      SizedBox(height: 2.h),
                    ],
                  ),
                ),
          ),
        ]
     ),
     ),
    );
  }
}