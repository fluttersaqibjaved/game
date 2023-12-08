import 'package:flutter/material.dart';



class StatisticsView extends StatefulWidget {
  @override
  State<StatisticsView> createState() => _StatisticsViewState();
}

class _StatisticsViewState extends State<StatisticsView> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Option 1'),
                onTap: () {
                 
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('Option 2'),
                onTap: () {
                 
                  Navigator.pop(context);
                },
              ),
                ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('Option 3'),
                onTap: () {
                 
                  Navigator.pop(context);
                },
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
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showBottomSheet(context); 
          },
          child: Text('Next'),
        ),
      ),
      
    );
  }
}
