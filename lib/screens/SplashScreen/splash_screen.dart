import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash/screens/OnboardingScreen/onboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => OnBoardingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png",
            height: 120,
            ),
            SizedBox(
              height: 20,
              ),
              // CircularProgressIndicator(
              //    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              // )
          ],
        )
      ),
    );
  }
}