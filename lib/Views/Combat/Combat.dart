import 'package:flutter/material.dart';
import 'package:gametime/Views/App%20Open/game_view.dart';
import 'package:gametime/Views/Combat/Combathome_view.dart';
import 'package:gametime/Views/Login%20Detail/acccount_view.dart';
import 'package:gametime/Views/Mobile%20Number/mobilenumber_view.dart';
import 'package:gametime/Views/splashscreen_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

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
    GameView(),
    AccountView(),
    MobileNumberView(),
    SplashScreenView(),
  ];

  bool shouldShowAppBar(int index) {
    return index != 0;
  }
    

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       key: _scaffoldKey,
       appBar: AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false, 
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             GestureDetector(
                onTap: () {
                   _scaffoldKey.currentState?.openDrawer();
                },
                child:
            Image.asset(
              'assets/images/Hamburger.png',
              fit: BoxFit.fitWidth,
              width: 8.0.w,
            ),
             ),
            SizedBox(width: 5.0.w),
            Row(
              children: [
                Image.asset(
                  'assets/images/Ellipse.png',
                  fit: BoxFit.fitWidth,
                  width: 8.0.w,
                ),
                SizedBox(width: 2.0.w),
                Text(
                  'Stone Stellar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.yellow,
  unselectedItemColor: Colors.white,
  selectedFontSize: 15,
  unselectedFontSize: 15,
  selectedLabelStyle: TextStyle(
    fontWeight: FontWeight.bold,
  ),
  unselectedLabelStyle: TextStyle(
    fontWeight: FontWeight.bold,
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
          width: 24, // Adjust width and height as needed
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
          child:  Image.asset(
            'assets/images/Schedule.png',
            width: 34,
            height: 34,
          ),
        ),
      ),

    );
  }
}