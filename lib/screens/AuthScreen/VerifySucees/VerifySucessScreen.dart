import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/CustomElevatedButton/CustomElevateButton.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';
import 'package:my_app_test/components/TitleComponents/Title.dart';
import 'package:my_app_test/components/TitleComponents/largeTitle.dart';
import 'package:my_app_test/components/TitleComponents/mediumTitle.dart';

class Verifysucessscreen extends StatelessWidget {
  const Verifysucessscreen({super.key});

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
              Image(image: CustomNetworkImage(ImageConstants.SuccessVerify),width: 400,height: 300,),
              Mediumtitle(text: "Verify Success", color: ColorConstants.textColor),
     
              SizedBox(height: 10),
       
              SizedBox(
                width: 320,
                child: Subtitle(
                  text: "You have succeed verify your account. Please login !",
                  color: ColorConstants.textColor3,
                ),
              ),
   
              // Removed the Spacer/Expanded as it's not needed in this case
        
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Customelevatebutton(
                  text: "Login", 
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
