import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tasky/screens/login_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});
  static const String routeName = "OnBordingScreen";

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) {
    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
  }

  Widget _buildImage(String assetPath, [double width = 350]) {
    return Image.asset(assetPath, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16, color: Color(0xff6E6A7C));

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      pages: [
        PageViewModel(
          title: "Manage your tasks",
          body:
              "You can easily manage all of your daily tasks in DoMe for free",
          image: _buildImage('assets/images/onbording_1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Create daily routine",
          body:
              "In Tasky  you can create your personalized routine to stay productive",
          image: _buildImage('assets/images/onbording_2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Orgonaize your tasks",
          body:
              "You can organize your daily tasks by adding your tasks into separate categories",
          image: _buildImage('assets/images/onbording_3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      showBackButton: false,
      next: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF5F33E1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          'NEXT',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      done: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF5F33E1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          'START',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: const Size(24.0, 4.0),
        activeSize: const Size(24.0, 4.0),
        color: const Color(0xFFBDBDBD),
        activeColor: const Color(0xFF5F33E1),
        spacing: const EdgeInsets.symmetric(horizontal: 4.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
