import 'package:flutter/material.dart';
import 'package:gametime/Views/pageist_view.dart';
import 'package:gametime/Views/pagend_view.dart';
import 'package:gametime/Views/pagerd_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GameView extends StatefulWidget {
  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
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
                PageistView(),
                PagendView(),
                PagerdView(),
              ],
            ),
          ),
      Container(
  alignment: Alignment.center,
  padding: const EdgeInsets.only(bottom: 50),
  child: SmoothPageIndicator(
    controller: _pageController,
    count: 3,
    effect: ScrollingDotsEffect(
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
