import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/Title.dart';
import 'package:my_app_test/screens/IntroductionScreen/IntroLayout.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => Introlayout(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end:  Alignment.bottomRight,
            colors: <Color>[
              ColorConstants.primaryColor,
              ColorConstants.secondaryColor,
            ],
          )
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: <Widget>[
                Image(image: CustomNetworkImage(ImageConstants.logo),width: 100,height: 100,),
                
                TitleWidgetH1(text: 'Jobee',color: ColorConstants.textColor2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
