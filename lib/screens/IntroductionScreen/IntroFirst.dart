import 'package:flutter/cupertino.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';
import 'package:my_app_test/components/TitleComponents/largeTitle.dart';

class Introfirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
             Image(image: CustomNetworkImage(ImageConstants.SplashLogoFLow1),
             width: 250,height: 250,),
             TitleH2(text: "Search for job",color: ColorConstants.primaryColor,),

             SizedBox(height: 15),

             SizedBox(
              width: 300,
              child: Subtitle(text: "Find the right job for you. Search by job title, company, or location.",
                color: ColorConstants.textColor3,
              ),

             ),
             
             SizedBox(height: 20),  
            
          ],
        ),
      ),
    );
  }

  // Corrected createState
}
