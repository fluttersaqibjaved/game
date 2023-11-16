import 'package:flutter/material.dart';

void main() {
  runApp(NewView());
}

class NewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom App Bar Example'),
      ),
      body: Center(
        child: Text(
          'Your main content goes here',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
     
     
    );
  }
}
