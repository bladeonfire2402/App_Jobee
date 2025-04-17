import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/components/CustomElevatedButton/CustomElevateButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app_test/components/TextField/TextFieldVer2.dart';
import 'package:my_app_test/components/TitleComponents/Subtitle.dart';
import 'package:my_app_test/components/TitleComponents/largeTitle.dart';

class Registerscreen  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController fullnameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            spacing: 5,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new), // Icon for Android
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous screen
                  },
                ),
              ),

              TitleH2(text: "Jobee",color: ColorConstants.primaryColor,),

              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.thumb_up, color: ColorConstants.primaryColor,),
                ],
              ),

              Align(
               child: Subtitle(text: "Let’s Register. Apply to jobs!",color: ColorConstants.textColor3,),
                alignment: Alignment.centerLeft,
              ),

              SizedBox(height: 10),

              
              Input(
                icon: Icons.account_circle,
                hintText: 'Fullname',
                controller: fullnameController
              ),

              SizedBox(height: 10),

              
              Input(
                icon: Icons.email,
                hintText: 'Email',
                controller: emailController
              ),

              SizedBox(height: 10),


              Input(
                icon: Icons.password,
                hintText: 'Password',
                controller: passwordController,
              ),

              SizedBox(height: 10),

              
              Input(
                icon: Icons.phone,
                hintText: 'Phone',
                controller: phoneController
              ),

              SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                child: Customelevatebutton(
                  text: "Register", color: ColorConstants.primaryColor,
                   textColor: ColorConstants.textColor2,
                    onPressed: ()=>{}),
              ),
              
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 1,
                      decoration: const BoxDecoration(
                      color: ColorConstants.textColor3
                      
                    ),),
                  ),
                  Subtitle(text: "Or register with",color: ColorConstants.textColor3,),
                   Expanded(
                    flex: 1,
                    child: Container(
                      height: 1,
                      decoration: const BoxDecoration(
                      color: ColorConstants.textColor3
                      
                    ),),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Icon(Icons.facebook, color: ColorConstants.primaryColor,size: 50,),
                  Icon(Icons.apple, color: ColorConstants.primaryColor,size: 50),
                ],  
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Subtitle(text: "Already have an account?",color: ColorConstants.textColor3,),
                  TextButton(
                    onPressed: () {
                      // Navigate to the login screen
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}