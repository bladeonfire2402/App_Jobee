import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/screens/AuthScreen/RegisterScreen/RegisterScreen.dart';
import 'package:shadcn_ui/shadcn_ui.dart';


class RootLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShadApp(
      // Bọc trong ShadApp để cung cấp ShadTheme
      home: Scaffold(body: Registerscreen()),
    );
  }
}
