import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/HomeScreenComponents/featureHome.dart';
import 'package:my_app_test/components/HomeScreenComponents/headerHome.dart';
import 'package:my_app_test/components/HomeScreenComponents/recommendHome.dart';
import 'package:my_app_test/components/HomeScreenComponents/searchHome.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 15,
          ),
          child: Column(
            children: [
              //Phần chào người dùng 
              Headerhome(userName: "Alan Nguyen", avatar:ImageConstants.avatar),
              
              SizedBox(height: 20,),

              //Phần Searchbar
              Searchhome(),
              SizedBox(height: 30,),

              //Phần feature 
              FeatureHome(),
              SizedBox(height: 20,),

              //Phần recommendJob
              RecommendHome()

              ],         
         ),

        ),
      ),
    );
  }
} 