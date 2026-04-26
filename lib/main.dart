import 'package:flutter/material.dart';
import 'package:tasky/screens/login_screen.dart';
import 'package:tasky/screens/onbording_screen.dart';
import 'package:tasky/screens/register_screen.dart';

void main() {
  runApp(TaskyApp());
}

class TaskyApp extends StatelessWidget {
  const TaskyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoardingPage.routeName,
      routes: {
        OnBoardingPage.routeName:(context)=>OnBoardingPage(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context)=>RegisterScreen(),
      },
    );
  }
}


//Icon launcher Helper:
// 1- add package flutter_launcher_icons in pubspec.yaml
// icons app logo
// 2- app IOS & Android:
// # size 1024x1024
// # PNG
// # no alpha (no transparency)
// # no rounded corners
// # example:
// assets/icons/app_icon.png

// write in pubspec.yaml
// dev_dependencies:
//   flutter_launcher_icons: ^0.13.1



// final run this
// flutter pub get
// dart run flutter_launcher_icons