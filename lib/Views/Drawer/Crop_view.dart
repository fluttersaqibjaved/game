// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:image_cropper/image_cropper.dart';



// class CropView extends StatefulWidget {
//   @override
//   _CropViewState createState() => _CropViewState();
// }

// class _CropViewState extends State<CropView> {
//   final picker = ImagePicker();
//   File? _imageFile;
//   File? _croppedFile;

//   Future<void> _pickImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       _cropImage(File(pickedFile.path));
//     }
//   }

//   Future<void> _cropImage(File imageFile) async {
//     File? croppedFile = await ImageCropper.cropImage(
//       sourcePath: imageFile.path,
//       aspectRatioPresets: [
//         CropAspectRatioPreset.square,
//         CropAspectRatioPreset.ratio3x2,
//         CropAspectRatioPreset.original,
//         CropAspectRatioPreset.ratio4x3,
//         CropAspectRatioPreset.ratio16x9
//       ],
//       androidUiSettings: AndroidUiSettings(
//         toolbarTitle: 'Crop Image',
//         toolbarColor: Colors.deepOrange,
//         toolbarWidgetColor: Colors.white,
//         initAspectRatio: CropAspectRatioPreset.original,
//         lockAspectRatio: false,
//       ),
//       iosUiSettings: IOSUiSettings(
//         title: 'Crop Image',
//       ),
//     );

//     if (croppedFile != null) {
//       setState(() {
//         _croppedFile = croppedFile;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Cropping Example'),
//       ),
//       body: Center(
//         child: _croppedFile == null
//             ? Text('No image selected')
//             : Image.file(_croppedFile!),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _pickImage,
//         tooltip: 'Pick Image',
//         child: Icon(Icons.add_a_photo),
//       ),
//     );
//   }
// }
