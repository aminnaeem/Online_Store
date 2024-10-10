import 'package:flutter/material.dart';
import 'package:onepointshop/widgets/welcome_screen_card.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    // Listen to page changes
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

   @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final List pages = [
      WelcomeScreenCard(mainText: 'Welcome!', subText: 'Explore unbeatable deals on\nyour favorite products.\nYour journey to smart\nshopping starts here!',),
      WelcomeScreenCard(mainText: 'Shop with Ease', subText: 'Navigate through a seamless\nshopping experience designed just\nfor you. Finding what you\nlove has never been easier!',),
      WelcomeScreenCard(mainText: 'Tailored Just for You', subText: 'Receive personalized recommendations\nbased on your preferences.\nLet us help you find\nexactly what you need!',),
      WelcomeScreenCard(mainText: "You're All Set!", subText: 'Thank you for joining us!\nDive into a world of incredible\nproducts and special surprises\nwaiting just for you.\nHappy shopping!',)
    ];

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: pages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return pages[index];
                  }
                ),
              ),
              _buildPageIndicator(pages.length)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageIndicator(int pageCount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pageCount, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            width: _currentPage == index ? 12.0 : 12.0,
            height: 12.0,
            decoration: BoxDecoration(
              color: _currentPage == index ? Colors.blue : Color(0xFFC7D6FB),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        );
      }),
    );
  }
}

