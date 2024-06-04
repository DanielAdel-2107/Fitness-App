import 'dart:async';
import 'package:fitness/Login/LogIn.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {


  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() async {
    await Future.delayed(Duration(seconds: 4));
    navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => LogIn()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (_) => MaterialPageRoute(
        builder: (context) => SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Container(
                child: Image.asset(
                  'assets/images/splach.png',
                  fit: BoxFit.cover,
                  height: screenHeight,
                  width: screenWidth,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

