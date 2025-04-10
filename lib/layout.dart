import 'package:flutter/material.dart';
import 'package:my_app_test/screens/AuthScreen/RegisterScreen/RegisterScreen.dart';

import 'package:my_app_test/screens/IntroductionScreen/IntroLayout.dart';
import 'package:my_app_test/screens/SplashScreen/SplashScreen.dart';

class RootLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Registerscreen(),
    );
  }
}