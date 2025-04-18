import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';

import 'package:my_app_test/components/TitleComponents/mediumTitle.dart';

class Headerhome extends StatelessWidget {
  final String userName;
  final String avatar;

  const Headerhome({super.key, required this.userName, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0), // Add some padding to the container
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space out the content
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
            children: [
              Subtitle(text: "Welcome Jobeer !",color: ColorConstants.textColor3,),
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Mediumtitle(text: userName,color: ColorConstants.textPrimary,),
                  SizedBox(width: 8.0), // Space between user name and icon
                  Icon(Icons.auto_awesome, size: 30,color: Color.fromARGB(255, 252, 252, 84),),
                ],
              ),
            ],
          ),
          ClipOval(
            child: Container(
              height: 70,
              width: 70,
              color: ColorConstants.fourthlyColor,
              child: Center(
                child: SizedBox(
                  height: 65,
                  width: 65,
                  child: CircleAvatar(
                    radius: 20, // Set the size of the avatar
                    backgroundImage: CustomNetworkImage(avatar),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
