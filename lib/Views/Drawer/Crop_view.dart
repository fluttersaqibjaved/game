import 'package:flutter/material.dart';



class CropView extends StatelessWidget {

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Image Crop Example"),
      ),
      body: new Center(
        child: new AspectRatio(
          aspectRatio: 100 / 400,
          child: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: FractionalOffset.topCenter,
                image: new NetworkImage('https://i.stack.imgur.com/lkd0a.png'),
              )
            ),
          ),
        ),
      ),
    );
  }
}
