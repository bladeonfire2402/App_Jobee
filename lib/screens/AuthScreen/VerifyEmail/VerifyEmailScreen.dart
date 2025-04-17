import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/components/CustomElevatedButton/CustomElevateButton.dart';
import 'package:my_app_test/components/TextField/TextFieldVer2.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';
import 'package:my_app_test/components/TitleComponents/largeTitle.dart';
import 'package:my_app_test/components/TitleComponents/mediumTitle.dart';

class VerifyEmailscreen extends StatelessWidget {
  const VerifyEmailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController verifyCodeController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 800,
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ensures Column only takes required space
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => {Navigator.pop(context)},
                      icon: Icon(Icons.arrow_back_ios_new))
                ],
              ),
              SizedBox(height: 50),
              Center(
                child: TitleH2(
                  text: "Jobee",
                  color: ColorConstants.primaryColor,
                ),
              ),
              SizedBox(height: 30),
              Mediumtitle(text: "Forgot Password", color: ColorConstants.textColor),
              SizedBox(height: 5),
              SizedBox(
                width: 320,
                child: Subtitle(
                  text: "Enter your verifycode that we sended you by email",
                  color: ColorConstants.textColor3,
                ),
              ),
              SizedBox(height: 50),
              Input(
                icon: Icons.code,
                hintText: 'Verify Code',
                controller: verifyCodeController,
              ),
              // Removed the Spacer/Expanded as it's not needed in this case
              SizedBox(height: 30),  // Optional: Add some space at the bottom if needed
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Customelevatebutton(
                  text: "Verify", 
                  color: ColorConstants.primaryColor,
                   textColor: ColorConstants.textColor2,
                    onPressed: ()=>{}),
              ),
              SizedBox(height: 20,)

            ],
          ),
        ),
      ),
    );
  }
}
