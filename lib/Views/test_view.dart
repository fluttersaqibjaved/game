// import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// class DiscoverView extends StatefulWidget {
//   @override
//   _DiscoverViewState createState() => _DiscoverViewState();
// }

// class _DiscoverViewState extends State<DiscoverView> {
//   bool isEmojiPickerVisible = false;
//   TextEditingController _textEditingController = TextEditingController();
//   bool isTextFieldEmpty = true;

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

//   Future<void> _openCamera() async {
//     // Implement your camera logic here
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chat'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 20),
//               Container(
//                 height: 7.h,
//                 width: 70.w,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(25.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       spreadRadius: 2,
//                       blurRadius: 3,
//                       offset: Offset(0, 2),
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.emoji_emotions),
//                       onPressed: () {
//                         setState(() {
//                           isEmojiPickerVisible = !isEmojiPickerVisible;
//                         });
//                       },
//                     ),
//                     Expanded(
//                       child: TextField(
//                         controller: _textEditingController,
//                         decoration: InputDecoration(
//                           hintText: 'message',
//                           border: InputBorder.none,
//                         ),
//                         onTap: () {
//                           setState(() {
//                             isEmojiPickerVisible = false;
//                           });
//                         },
//                       ),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.attach_file),
//                       onPressed: () {
//                         // Show attachment options
//                       },
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.camera_alt),
//                       onPressed: () {
//                         _openCamera();
//                         print('Camera button tapped!');
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 3.h),
//               isEmojiPickerVisible
//                   ? EmojiPicker(
//                       rows: 3,
//                       columns: 7,
//                       onEmojiSelected: (emoji, category) {
//                         setState(() {
//                           _textEditingController.text += emoji.emoji;
//                         });
//                       },
//                     )
//                   : SizedBox(),
//               // Rest of your UI
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
