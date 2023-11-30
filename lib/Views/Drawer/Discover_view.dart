import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class DiscoverView extends StatefulWidget {
  @override
  _DiscoverViewState createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
   bool isEmojiPickerVisible = false;
  TextEditingController _textEditingController = TextEditingController();
  bool isTextFieldEmpty = true;
  
 void toggleEmojiPicker() {
  setState(() {
    isEmojiPickerVisible = !isEmojiPickerVisible;
    print('Emoji Picker Visibility: $isEmojiPickerVisible');
  });
}


Future<void> _openCamera() async {
    final XFile? image = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );

    if (image != null) {
      print("Image path: ${image.path}");
    }
  }

  Future<void> _openGallery() async {
    final XFile? image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (image != null) {
      print("Image path: ${image.path}");
    }
  }

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_textFieldListener);
  }

  void _textFieldListener() {
    setState(() {
      isTextFieldEmpty = _textEditingController.text.isEmpty;
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                 Container(
      height: 7.h,
      width: 70.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
       boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.1), 
      spreadRadius: 2,  
      blurRadius: 3,  
      offset: Offset(0, 2),  
    ),
  ],
      ),
      child: Row(
        children: [
         GestureDetector(
  onTap: () {
    toggleEmojiPicker(); 
  },
  child: IconButton(
    icon: Icon(Icons.emoji_emotions),
    onPressed: () {
      
    },
  ),
),

          Expanded(
            child:TextField(
  controller: _textEditingController,
  decoration: InputDecoration(
    hintText: 'message',
    border: InputBorder.none,
  ),
  onTap: () {
    if (isTextFieldEmpty) {
      print('Microphone icon tapped!');
      
    } else {
      print('Message sent!');
      
    }
  },
),

          ),
       IconButton(
  icon: Icon(Icons.attach_file),
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          
          actions: <Widget>[
          
              Column(
                children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
              onPressed: () {
                Navigator.pop(context);
                
               
              },
              child: Column(
                children: [
                  Icon(Icons.camera_alt_rounded),
                  SizedBox(width: 8), 
                  Text('Camera'),
                ],
              ),
            ),
          
                      TextButton(
              onPressed: () {
                Navigator.pop(context);
                
                
              },
              child: Column(
                children: [
                  Icon(Icons.browse_gallery_outlined),
                  SizedBox(width: 8), 
                  Text('Gallery'),
                ],
              ),
            ),
              TextButton(
              onPressed: () {
                Navigator.pop(context);
               
                
              },
              child: Column(
                children: [
                  Icon(Icons.attach_file),
                  SizedBox(width: 8), 
                  Text('File'),
                ],
              ),
            ),
              ],
            ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
              onPressed: () {
                Navigator.pop(context);
               
                
              },
              child: Column(
                children: [
                  Icon(Icons.facebook_outlined),
                  SizedBox(width: 8), 
                  Text('Facebook'),
                ],
              ),
            ),
                      TextButton(
              onPressed: () {
                Navigator.pop(context);
               
                
              },
              child: Column(
                children: [
                  Icon(Icons.gif_outlined),
                  SizedBox(width: 8), 
                  Text('Google'),
                ],
              ),
            ),
              TextButton(
              onPressed: () {
                Navigator.pop(context);
               
                
              },
              child: Column(
                children: [
                  Icon(Icons.person_2_outlined),
                  SizedBox(width: 8), 
                  Text('Person'),
                ],
              ),
            ),
              ],
            ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
              onPressed: () {
                Navigator.pop(context);
                
                
              },
              child: Column(
                children: [
                  Icon(Icons.location_city),
                  SizedBox(width: 8), 
                  Text('Location'),
                ],
              ),
            ),
                      TextButton(
              onPressed: () {
                Navigator.pop(context);
                
               
              },
              child: Column(
                children: [
                  Icon(Icons.contact_emergency_outlined),
                  SizedBox(width: 8), 
                  Text('Contact'),
                ],
              ),
            ),
              TextButton(
              onPressed: () {
                Navigator.pop(context);
                
                
              },
              child: Column(
                children: [
                  Icon(Icons.poll_outlined),
                  SizedBox(width: 8), 
                  Text('Poll'),
                ],
              ),
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
),

          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
               Navigator.pop(context);
                          _openCamera();
              print('Camera button tapped!');
            },
          ),
      
                ]
              ),
                 ),
                 SizedBox(height: 3.h),
              isEmojiPickerVisible
                  ? Expanded(
                      child: EmojiPicker(
                        onEmojiSelected: (emoji, category) {
                          setState(() {
                            _textEditingController.text +=
                                emoji.toString(); 
                          });
                        },
                      ),
                    ):
                  SizedBox(width: 3.w),
                  GestureDetector(
                    onTap: () {
                      if (isTextFieldEmpty) {
                        
                        print('Microphone icon tapped!');
                      } else {
                        
                        print('Message sent!');
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: isTextFieldEmpty ? Colors.green : Colors.green,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        isTextFieldEmpty ? Icons.mic : Icons.send,
                        color: Colors.white,
                        size: 28.0,
                      ),
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
