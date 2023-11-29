import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  String enteredText = '';
  String currentTime = '';
  String currentDate = '';
  double containerWidth = 100.0;
  double containerHeight = 100.0;
  bool showContainer = false;
  
  void _updateDateTime() {
    setState(() {
      currentTime = DateTime.now().toString();
      currentDate = DateTime.now().toLocal().toString();
      showContainer = true; 
      enteredText = enteredText; 
    });
  } 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Variable Example'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    enteredText = text;
                    containerHeight = (enteredText.length * 20).toDouble();
                  });
                },
                decoration: InputDecoration.collapsed(
                  hintText: 'Please type something...',
                ),
                textInputAction: TextInputAction.send,
                onSubmitted: (text) {
                  _updateDateTime();
                },
              ),
            ),
            SizedBox(height: 20.0),
            enteredText.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 30.0,
                            child: Text(
                              enteredText,
                              style: TextStyle(fontSize: 18.0),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
            SizedBox(height: 20.0),
            if (showContainer)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current Time: $currentTime'),
                  SizedBox(height: 10.0),
                  Text('Current Date: $currentDate'),
                  SizedBox(height: 20.0),
                  Container(
                    width: containerWidth,
                    height: containerHeight,
                    color: Colors.pink,
                    child: Center(
                      child: Text(
                        enteredText,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (enteredText.isNotEmpty) {
                  _updateDateTime();
                }
              },
              child: Text('Send'),
            ),
          ],
        ),
      );
  }
}
