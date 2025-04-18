

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/HomeScreenComponents/headerHome.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: Column(
            children: [Headerhome(userName: "Alan Nguyen", avatar:ImageConstants.logo)],
          ),

        ),
      ),
    );
  }
} 