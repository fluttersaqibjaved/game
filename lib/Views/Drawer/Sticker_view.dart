import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class StickerView extends StatefulWidget {
  const StickerView({Key? key}) : super(key: key);

  @override
  State<StickerView> createState() => _StickerViewState();
}

class _StickerViewState extends State<StickerView> {
  File? _image;
  late SharedPreferences _prefs;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadImageFromPrefs();
  }

  Future<void> _loadImageFromPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    String? imagePath = _prefs.getString('imagePath');
    if (imagePath != null && imagePath.isNotEmpty) {
      setState(() {
        _image = File(imagePath);
      });
    }
  }

  Future<void> _saveImageToPrefs(String imagePath) async {
    _prefs.setString('imagePath', imagePath);
  }

  Future<void> _openCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    _setImage(pickedFile);
  }

  Future<void> _openGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    _setImage(pickedFile);
  }

  Future<void> _setImage(XFile? pickedFile) async {
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _saveImageToPrefs(_image!.path);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditImagePage(imageFile: _image!),
          ),
        );
      }
    });
  }
  


  
 

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Pick Image From',
                style: TextStyle(color: Colors.green),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  _openCamera();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 30.0,
                    ),
                    SizedBox(width: 2.w),
                    Text('Open Camera'),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  _openGallery();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.photo_library_outlined,
                      size: 30.0,
                    ),
                    SizedBox(width: 2.w),
                    Text('Open Gallery'),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
                 GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  _openGallery();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.file_copy_sharp,
                      size: 30.0,
                    ),
                    SizedBox(width: 2.w),
                    Text('Select File'),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
                 GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  _openGallery();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.library_add_check,
                      size: 30.0,
                    ),
                    SizedBox(width: 2.w),
                    Text('Sticker Library'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showBottomSheet(context);
          },
          child: Container(
            width: 15.w,
            height: 10.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
              ),
            ),
            child: _image != null ? Image.file(_image!) : null,
          ),
        ),
      ),
    );
  }
}

class EditImagePage extends StatefulWidget {
  final File imageFile;

  const EditImagePage({Key? key, required this.imageFile}) : super(key: key);

  @override
  State<EditImagePage> createState() => _EditImagePageState();
}

class _EditImagePageState extends State<EditImagePage> {
  
  
File? selectedImage;

  void _addImageToContainer() {
    setState(() {
      
      selectedImage = widget.imageFile;
    });
  }
    double _angle = 0; 
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              GestureDetector(
                onTap: () {
               _addImageToContainer(); 
                },
                child:   Icon(
            Icons.check,
            size: 50, 
           
          ),
              ),
          Transform.rotate(
              angle: _angle,
              child: Image.file(widget.imageFile), 
            ),
            
            SizedBox(height: 20), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _angle += 45 * (3.1415926535 / 180); 
                });
              },
              child: Text('Rotate'),
            ),
                
                    ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Select All'),
                ),
                
                  ElevatedButton(
                  onPressed: () {
                   
                  },
                  child: Text('Smart Select'),
                ),
              ],
            ),
            SizedBox(height: 10), 

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 ElevatedButton(
                  onPressed: () {
                   
                  },
                  child: Text('Free Hand'),
                ),

              ElevatedButton(
  onPressed: () {
   
  },
  child: Text('Cut Square'),
),

                
             ElevatedButton(
  onPressed: () async {
    
    String? userText = await showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController textEditingController = TextEditingController();
        return AlertDialog(
         
          content: TextField(
            controller: textEditingController,
            decoration: InputDecoration(hintText: 'Enter text here'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, textEditingController.text);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );

    if (userText != null && userText.isNotEmpty) {
     
      setState(() {
        
      });
    }
  },
  child: Text('Add Text'),
),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
