import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppSkinView extends StatefulWidget {
  const AppSkinView({Key? key}) : super(key: key);

  @override
  State<AppSkinView> createState() => _AppSkinViewState();
}

class _AppSkinViewState extends State<AppSkinView> {
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
       appBar: null,
      body:  Padding(
  padding: EdgeInsets.only(top: 50.0), 
  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                         child: IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.pinkAccent),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                       ),
                          SizedBox(height: 2.h),
                             Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                              child: Text(
                                                'Change',
                                                style: TextStyle(
                                                  color: Colors.pinkAccent,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                            ),
                
                    Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                     child: Text(
                                       'App Skin',
                                       style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                                       ),
                                     ),
                   ),
                SizedBox(height: 5.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                        'Light',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                                       ),
                                       
                                   Icon(
            Icons.check, 
            size: 20, 
            color: Colors.pinkAccent,
          ),
                     ],
                   ),
                 ),
                SizedBox(height: 2.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                 SizedBox(height: 2.h),
                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                   child: Text(
                    'Dark',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                                   ),
                 ),
                SizedBox(height: 2.h),
                  Divider(
                              color: Colors.grey,
                              height: 0, 
                            ),
                
               
                              
                ]
                ),
          
            ]
  ),
      ),
    );
  }
}










// import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:sizer/sizer.dart';

// class AppSkinView extends StatefulWidget {
//   @override
//   _AppSkinViewState createState() => _AppSkinViewState();
// }

// class _AppSkinViewState extends State<AppSkinView> {
  
//    bool isEmojiPickerVisible = false;
//   TextEditingController _textEditingController = TextEditingController();
//   bool isTextFieldEmpty = true;
//    String sentMessage = '';
  
//  void toggleEmojiPicker() {
//   setState(() {
//     isEmojiPickerVisible = !isEmojiPickerVisible;
//     print('Emoji Picker Visibility: $isEmojiPickerVisible');
//   });
// }
// void sendMessage() {
//     setState(() {
//       sentMessage = _textEditingController.text; 
//       _textEditingController.clear(); 
//       isTextFieldEmpty = true; 
//     });
//     print('Message sent: $sentMessage');
//   }

// Future<void> _openCamera() async {
//     final XFile? image = await ImagePicker().pickImage(
//       source: ImageSource.camera,
//       imageQuality: 50,
//     );

//     if (image != null) {
//       print("Image path: ${image.path}");
//     }
//   }

//   Future<void> _openGallery() async {
//     final XFile? image = await ImagePicker().pickImage(
//       source: ImageSource.gallery,
//       imageQuality: 50,
//     );

//     if (image != null) {
//       print("Image path: ${image.path}");
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _textEditingController.addListener(_textFieldListener);
     
//   }

//   void _textFieldListener() {
//     setState(() {
//       isTextFieldEmpty = _textEditingController.text.isEmpty;
//     });
//   }

//   @override
//   void dispose() {
//     _textEditingController.dispose();
//     super.dispose();
//   }

  
 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//   backgroundColor: Colors.white,
  
//   title: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Stone Stellar',
//             style: TextStyle(color: Colors.pink),
//           ),
//           Text(
//             'Online Now',
//             style: TextStyle(color: Colors.black,fontSize: 15,),
//           ),
//         ],
//       ),
//     ],
//   ),
//   centerTitle: true,
//   leading: Padding(
//     padding: EdgeInsets.only(left: 10.0),
//     child: IconButton(
//       icon: Icon(
//         Icons.close,
//         color: Colors.pinkAccent,
//       ),
//       onPressed: () {
//         Navigator.of(context).pop();
//       },
//     ),
//   ),
//   actions: [
//     Padding(
//       padding: EdgeInsets.only(right: 10.0),
//       child: IconButton(
//         icon: Icon(
//           Icons.call,
//           color: Colors.pinkAccent,
//         ),
//         onPressed: () {
        
//         },
//       ),
//     ),
//   ],
// ),
//       body: Stack(
//       children: [
//           Positioned(
//           bottom: 0,
//           left: 0,
//           right: 0,
//           child:  Center(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 20),
//               Row(
//                 children: [
//                  Container(
//       height: 7.h,
//       width: 70.w,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(25.0),
//        boxShadow: [
//     BoxShadow(
//       color: Colors.black.withOpacity(0.1), 
//       spreadRadius: 2,  
//       blurRadius: 3,  
//       offset: Offset(0, 2),  
//     ),
//   ],
//       ),
//       child: Row(
//         children: [
//          GestureDetector(
//   onTap: () {
//     toggleEmojiPicker(); 
//   },
//   child: IconButton(
//     icon: Icon(Icons.emoji_emotions),
//     onPressed: () {
      
//     },
//   ),
// ),

//           Expanded(
//             child:TextField(
//   controller: _textEditingController,
//   decoration: InputDecoration(
//     hintText: 'message',
//     border: InputBorder.none,
//   ),
//   onTap: () {
    
//     if (isTextFieldEmpty) {
//       print('Microphone icon tapped!');
      
//     } else {
//       print('Message sent!');
      
//     }
//   },
// ),

//           ),
//        IconButton(
//   icon: Icon(Icons.attach_file),
//   onPressed: () {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
          
//           actions: <Widget>[
          
//               Column(
//                 children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
                
               
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.camera_alt_rounded),
//                   SizedBox(width: 8), 
//                   Text('Camera'),
//                 ],
//               ),
//             ),
          
//                       TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
                
                
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.browse_gallery_outlined),
//                   SizedBox(width: 8), 
//                   Text('Gallery'),
//                 ],
//               ),
//             ),
//               TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
               
                
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.attach_file),
//                   SizedBox(width: 8), 
//                   Text('File'),
//                 ],
//               ),
//             ),
//               ],
//             ),
//                    Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
               
                
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.facebook_outlined),
//                   SizedBox(width: 8), 
//                   Text('Facebook'),
//                 ],
//               ),
//             ),
//                       TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
               
                
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.gif_outlined),
//                   SizedBox(width: 8), 
//                   Text('Google'),
//                 ],
//               ),
//             ),
//               TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
               
                
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.person_2_outlined),
//                   SizedBox(width: 8), 
//                   Text('Person'),
//                 ],
//               ),
//             ),
//               ],
//             ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
                
                
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.location_city),
//                   SizedBox(width: 8), 
//                   Text('Location'),
//                 ],
//               ),
//             ),
//                       TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
                
               
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.contact_emergency_outlined),
//                   SizedBox(width: 8), 
//                   Text('Contact'),
//                 ],
//               ),
//             ),
//               TextButton(
//               onPressed: () {
//                 Navigator.pop(context); 
//               },
//               child: Column(
//                 children: [
//                   Icon(Icons.poll_outlined),
//                   SizedBox(width: 8), 
//                   Text('Poll'),
//                 ],
//               ),
//             ),
//               ],
//             ),
//                 ],
//               ),
//           ],
//         );
//       },
//     );
//   },
// ),

//           IconButton(
//             icon: Icon(Icons.camera_alt),
//             onPressed: () {
//                Navigator.pop(context);
//                           _openCamera();
//               print('Camera button tapped!');
//             },
//           ),
      
//                 ]
//               ),
//                  ),
//                  SizedBox(height: 3.h),
//               isEmojiPickerVisible
//                   ? Expanded(
//                       child: EmojiPicker(
//                         onEmojiSelected: (emoji, category) {
//                           setState(() {
//                             _textEditingController.text +=
//                                 emoji.toString(); 
//                           });
//                         },
//                       ),
//                     ):
//                   SizedBox(width: 3.w),
//               Container(
//     padding: EdgeInsets.all(2.0),
//     decoration: BoxDecoration(
//       color: isTextFieldEmpty ? Colors.green : Colors.green,
//       shape: BoxShape.circle,
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black.withOpacity(0.1),
          
//           offset: Offset(0, 2),
//         ),
//       ],
//     ),
//     child:TextButton(
//   onPressed: () {
//     if (isTextFieldEmpty) {
//       print('Recording started!');
//     } else {
//       print('Message sent!');
//     }
//   },
//   child: Row(
//     mainAxisSize: MainAxisSize.min, 
//     children: [
//       Icon(
//         isTextFieldEmpty ? Icons.mic : Icons.send, 
//         color: Colors.white,
//       ),
//     ],
//   ),
// ),
//   ),

              
                  
//                 ],
//               ),
              
//             ],
//           ),
//         ),
//       ),
//           ),
//       ]
//       ),
//     );
//   }
// }
