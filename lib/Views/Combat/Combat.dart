import 'package:flutter/material.dart';
import 'package:gametime/Views/Combat/Combathome_view.dart';
import 'package:gametime/Views/Combat/Drawer/Chat_view.dart';
import 'package:gametime/Views/Combat/Drawer/Discover_view.dart';
import 'package:gametime/Views/Combat/Drawer/Profile_view.dart';
import 'package:image_picker/image_picker.dart';


class Combat extends StatefulWidget {
  const Combat({super.key});

  @override
  State<Combat> createState() => _CombatState();
}

class _CombatState extends State<Combat> {

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
int _currentIndex = 0;

  final List<Widget> _pages = [
    CombatHomeView(),
    DiscoverView(),
    ChatView(),
    ProfileView(),
    
  ];

  bool shouldShowAppBar(int index) {
    return index != 0;
  }
    

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       key: _scaffoldKey,
      
    body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white,
  selectedFontSize: 15,
  unselectedFontSize: 15,
  selectedLabelStyle: TextStyle(
    fontWeight: FontWeight.bold,
  ),
  unselectedLabelStyle: TextStyle(
    
  ),
  backgroundColor: Color(0xFFFF3F81),
  currentIndex: _currentIndex,
  onTap: (index) {
    setState(() {
      _currentIndex = index;
    });
  },
  items: [
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.zero,
        child: Image.asset(
          'assets/images/Statistics Icon.png',
          width: 24, 
          height: 24,
        ),
      ),
      label: 'Statistics',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.zero,
        child: Image.asset(
          'assets/images/Location_Pin.png',
          width: 24,
          height: 24,
        ),
      ),
      label: 'Discover',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.zero,
        child: Image.asset(
          'assets/images/Chat.png',
          width: 24,
          height: 24,
        ),
      ),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.zero,
        child: Image.asset(
          'assets/images/Profile.png',
          width: 24,
          height: 24,
        ),
      ),
      label: 'Profile',
    ),
  ],
),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 64,
        width: 64,
        child: FloatingActionButton(
          backgroundColor: Color(0xFFFF3F81),
          elevation: 0,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 150,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.camera),
                        title: Text('Camera'),
                        onTap: () {
                          Navigator.pop(context);
                          _openCamera(); 
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.image),
                        title: Text('Gallery'),
                        onTap: () {
                          Navigator.pop(context);
                          _openGallery(); 
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 3,
              color: Color(0xFFFF3F81),
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child:  Container(
            width: 50, 
            height: 50, 
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white, 
                width: 4.0, 
              ),
            ),
            child: Center(
             child:  Image.asset(
            'assets/images/Schedule.png',
            width: 34,
            height: 34,
          ),
            ),
          ),
        ),
      ),

    );
  }
}