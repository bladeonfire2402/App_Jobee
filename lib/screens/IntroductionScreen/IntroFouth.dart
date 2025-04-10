import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/CustomElevatedButton/CustomElevateButton.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';
import 'package:my_app_test/components/TitleComponents/largeTitle.dart';

class Introfouth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
             Image(image: CustomNetworkImage(ImageConstants.SplashLogoFLow1),
             width: 250,height: 250,),
             TitleH2(text: "Make your career",color: ColorConstants.primaryColor,),

             SizedBox(height: 15),

             SizedBox(
              width: 300,
              child: Subtitle(text: "We help you find your dream job based on your skillset, location, demand.",
                color: ColorConstants.textColor3,
              ),
             ),

         
             Expanded(child: SizedBox(),),

             SizedBox(
               width: double.infinity,
               child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                 child: Customelevatebutton(
                  text: "Explore", 
                  color: ColorConstants.primaryColor, 
                  textColor: ColorConstants.textColor2,
                   onPressed: ()=>{
                    
                   }),
               ),
             ),
            SizedBox(height: 60),  

            
          ],
        ),
      ),
    );
  }

  // Corrected createState
}
