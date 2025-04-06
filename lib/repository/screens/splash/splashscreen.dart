import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/domain/constants/appcolors.dart';
import 'package:flutter_application_2/repository/screens/login/loginscreen.dart';
import 'package:flutter_application_2/repository/widgtes/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [UiHelper.customImage(img: "image 1 (1).png")],
        ),
      ),
    );
  }
}
