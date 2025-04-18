import 'package:flutter/material.dart';
import 'package:my_app_test/screens/AuthScreen/LoginScreen/LoginScreen.dart';
import 'package:my_app_test/screens/AuthScreen/RegisterScreen/RegisterScreen.dart';
import 'package:my_app_test/screens/AuthScreen/VerifyEmail/VerifyEmailScreen.dart';
import 'package:my_app_test/screens/AuthScreen/VerifyFail/VerifyFailScreen.dart';
import 'package:my_app_test/screens/AuthScreen/VerifySucees/VerifySucessScreen.dart';
import 'package:my_app_test/screens/SplashScreen/SplashScreen.dart';
import 'package:my_app_test/screens/clientLayout.dart';
import 'package:shadcn_ui/shadcn_ui.dart';


class RootLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShadApp(
      // Bọc trong ShadApp để cung cấp ShadTheme
      home: Scaffold(body: Clientlayout()),
    );
  }
}
