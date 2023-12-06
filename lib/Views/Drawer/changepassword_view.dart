import 'package:flutter/material.dart';
import 'package:gametime/Views/Drawer/Profile_view.dart';
import 'package:sizer/sizer.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
   bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;
   
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _retypePasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _newPasswordController.dispose();
    _retypePasswordController.dispose();
    
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
          
              Center(
            child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child:
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
              
                    children: [
                    
                      SizedBox(height: 3.h),
                     Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
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
                        'Change',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 2.h),
                          Text(
                            'Feeling worried about your account been easily',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                           Text(
                            'preyed on? Then change that password now!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                           SizedBox(height: 4.h),
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
            controller: _newPasswordController,
            obscureText: _isConfirmPasswordHidden,
            decoration: InputDecoration(
              labelText: 'New Password',
              
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
           TextField(
            controller: _retypePasswordController,
            obscureText: _isConfirmPasswordHidden,
            decoration: InputDecoration(
              labelText: 'Retype Password',
              
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
          ),
        ]
     ),
     ),
    );
  }
}