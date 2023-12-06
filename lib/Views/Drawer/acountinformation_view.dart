import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gametime/Views/Drawer/Profile_view.dart';
import 'package:sizer/sizer.dart';

class AccountInformationView extends StatefulWidget {
  const AccountInformationView({super.key});

  @override
  State<AccountInformationView> createState() => _AccountInformationViewState();
}

class _AccountInformationViewState extends State<AccountInformationView> {
  
   TextEditingController _nameController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _bioController = TextEditingController();
  

  @override
  void dispose() {
     _nameController.dispose();
    _usernameController.dispose();
    _numberController.dispose();
    _emailController.dispose();
    _bioController.dispose();
    
    super.dispose();
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
                        'Account',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Information',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 2.h),
                          Text(
                            'All your account information can be accessed and edited',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                           Text(
                            'here but your mail will still remain edited.',
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
  FilteringTextInputFormatter.allow(RegExp(r'[a-z]')),
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
            TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              
            ),
          ),
                    SizedBox(height: 1.h),
                     TextField(
            controller: _numberController,
            decoration: InputDecoration(
              labelText: 'Phone Number',
            ),
            inputFormatters: <TextInputFormatter>[
  FilteringTextInputFormatter.allow(RegExp(r'[a-z0-9]')),
],

          ),
           TextField(
            controller: _bioController,
            decoration: InputDecoration(
              labelText: 'Bio',
            ),
            inputFormatters: <TextInputFormatter>[
  FilteringTextInputFormatter.allow(RegExp(r'[a-z0-9]')),
],

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