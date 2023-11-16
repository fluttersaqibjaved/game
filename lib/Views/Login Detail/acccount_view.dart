import 'package:flutter/material.dart';
import 'package:gametime/Views/Login%20Detail/login_view.dart';
import 'package:gametime/Views/Login%20Detail/register_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AccountView extends StatefulWidget {
  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  final PageController _pageController = PageController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                });
              },
              children: [
                RegisterView(),
                LoginView(),
 
              ],
            ),
          ),
     Container(
  alignment: Alignment.center,
  padding: const EdgeInsets.only(bottom: 50),
  child: SmoothPageIndicator(
    controller: _pageController,
    count: 2,
    effect: WormEffect(
      dotColor: Colors.redAccent.withOpacity(0.2),
      activeDotColor: Colors.red,
      dotHeight: 12,
      dotWidth: 12,
      spacing: 8,
    ),
  ),
),
        ],
      ),
    );
  }
}
