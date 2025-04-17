import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/CustomElevatedButton/CustomElevateButton.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';
import 'package:my_app_test/components/TitleComponents/Title.dart';

import 'package:my_app_test/components/TitleComponents/mediumTitle.dart';

class Verifyfailscreen extends StatelessWidget {
  const Verifyfailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 800,
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensures Column only takes required space
            children: [
              SizedBox(height: 35),
              Center(
                child: TitleWidgetH1(
                  text: "Jobee",
                  color: ColorConstants.primaryColor,
                ),
              ),
              Image(image: CustomNetworkImage(ImageConstants.FailVerify),width: 400,height: 300,),
              Mediumtitle(text: "Verify Failed", color: ColorConstants.textColor),
     
              SizedBox(height: 10),
       
              SizedBox(
                width: 320,
                child: Subtitle(
                  text: "You entered the wrong verification Code. Please Reverify !",
                  color: ColorConstants.textColor3,
                ),
              ),
   
              // Removed the Spacer/Expanded as it's not needed in this case
        
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Customelevatebutton(
                  text: "Verify again", 
                  color: ColorConstants.primaryColor,
                   textColor: ColorConstants.textColor2,
                    onPressed: ()=>{}),
              ),
              SizedBox(height: 10,)

            ],
          ),
        ),
      ),
    );
  }
}
