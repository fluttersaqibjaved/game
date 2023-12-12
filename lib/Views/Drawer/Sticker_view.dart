import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
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

Future<void> _openFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result != null) {
   
  } else {
   
  }
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
    _openFile();
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
  TextEditingController _textEditingController = TextEditingController();
  String _displayedText = "Your text here";
  late File imageFile;
  double _angle = 0;

  @override
  void initState() {
    super.initState();
    imageFile = widget.imageFile;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

   Future<void> _cropImage() async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      aspectRatioPresets: Platform.isAndroid
          ? [
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio16x9
            ]
          : [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio5x3,
              CropAspectRatioPreset.ratio5x4,
              CropAspectRatioPreset.ratio7x5,
              CropAspectRatioPreset.ratio16x9
            ],
      androidUiSettings: AndroidUiSettings(
        toolbarTitle: 'Image Cropper',
        toolbarColor: Colors.deepOrange,
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
      iosUiSettings: IOSUiSettings(
        title: 'Image Cropper',
      ),
    );

    if (croppedFile != null) {
      setState(() {
        imageFile = File(croppedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  child: AspectRatio(
                    aspectRatio: 400 / 400,
                    child: Transform.rotate(
                      angle: _angle,
                      child: Container(
                        width: 20.w,
                        height: 20.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.file(imageFile, fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  top: 100,
                  child: Container(
                    width: 200,
                    height: 50,
                    color: Colors.white.withOpacity(0.5),
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: _textEditingController,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Your text here',
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _displayedText = value;
                        });
                      },
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                      SizedBox(width: 3.w),
                      ElevatedButton(
                        onPressed: () {
                          _cropImage();
                        },
                        child: Text('Select All'),
                      ),
                      SizedBox(width: 3.w),
                      ElevatedButton(
                        onPressed: () async {
                          // Implement your Smart Select logic here
                        },
                        child: Text('Smart Select'),
                      ),
                      SizedBox(width: 3.w),
                      ElevatedButton(
                        onPressed: () {
                          // Implement Free Hand logic here
                        },
                        child: Text('Free Hand'),
                      ),
                      SizedBox(width: 3.w),
                      ElevatedButton(
                        onPressed: () {
                          // Implement Cut Square logic here
                        },
                        child: Text('Cut Square'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
