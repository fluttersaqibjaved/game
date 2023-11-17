// import 'package:flutter/material.dart';

// class DrawerView extends StatefulWidget {
//   @override
//   State<DrawerView> createState() => _DrawerViewState();
// }

// class _DrawerViewState extends State<DrawerView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer Example'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//              drawer: Drawer(
//         // Add your drawer content here
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
          
//             ListTile(
//               title: Text('Item 1'),
//               onTap: () {
//                 // Handle the tap on Item 1
//                 Navigator.pop(context); // Closes the drawer
//               },
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               onTap: () {
//                 // Handle the tap on Item 2
//                 Navigator.pop(context); // Closes the drawer
//               },
//             ),
//             // Add more ListTiles or other widgets as needed
//           ],
//         ),
//       ),    
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 // Add your logic here for when Home is tapped
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {
//                 // Add your logic here for when Settings is tapped
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//             // Add more ListTiles for other options
//           ],
//         ),
//       ),
//       body: Center(
//         child: Text('Drawer Example'),
//       ),
//     );
//   }
// }
