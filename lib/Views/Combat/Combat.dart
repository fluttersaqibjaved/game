import 'package:flutter/material.dart';
import 'package:gametime/Views/Combat/Combathome_view.dart';
import 'package:gametime/Views/Drawer/Chat_view.dart';
import 'package:gametime/Views/Drawer/Discover_view.dart';
import 'package:gametime/Views/Drawer/Profile_view.dart';
import 'package:image_picker/image_picker.dart';


class Combat extends StatefulWidget {
  const Combat({Key? key}) : super(key: key);

  @override
  State<Combat> createState() => _CombatState();
}

class _CombatState extends State<Combat> {
  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController _pageController = PageController(initialPage: 0); 
  int _currentIndex = 0; 

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

   void _onPageChanged(int index) {
    setState(() {
      if (index != 0) {
        _currentIndex = index;
      } else {
        _pageController.jumpToPage(_currentIndex);
      }
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
           CombatHomeView(),
          
          DiscoverView(),
          ChatView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Color(0xFFFF3F81),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
             
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
          
          Navigator.pushNamed(context, '/Statistics');
        },
        child: Padding(
        padding: EdgeInsets.zero,
        child: Image.asset(
          'assets/images/Statistics Icon.png',
          width: 24,
          height: 24,
        ),
      ),
          ),
      label: 'Statistics',
    ),
          BottomNavigationBarItem(
            icon:GestureDetector(
        onTap: () {
          
          Navigator.pushNamed(context, '/Discover');
        },
        child: Padding(
              padding: EdgeInsets.zero,
              child: Image.asset(
                'assets/images/Location_Pin.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
        onTap: () {
          
          Navigator.pushNamed(context, '/Chat');
        },
        child:  Padding(
              padding: EdgeInsets.zero,
              child: Image.asset(
                'assets/images/Chat.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: () {
           setState(() {
                 
                });
          Navigator.pushNamed(context, '/profile');
        },
        child: Padding(
          padding: EdgeInsets.zero,
          child: Image.asset(
            'assets/images/Profile.png',
            width: 24,
            height: 24,
          ),
        ),
      ),
      label: 'Profile',
    ),
        ],
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
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
      child: Container(
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
          child: Image.asset(
            'assets/images/Schedule.png',
            width: 34,
            height: 34,
          ),
        ),
      ),
    ),
    );
  }

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
}
