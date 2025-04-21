import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/Utils/Data/fake_Model.dart';
import 'package:my_app_test/components/Card/notifcationCard.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';

class NewactivityNotifiy extends StatelessWidget {
   NewactivityNotifiy({Key? key}) : super(key: key);

  final NotificationModel notification = new NotificationModel(
    name: "VNG", 
    companyLogo: ImageConstants.compannyLogo2, 
    receiverUser: "a long", 
    Title: "A long được nhận vào làm cho Vng", 
    content: "A long chính thức được vào làm cho VND");


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTitle(
            color: ColorConstants.fourthlyColor,
            fontSize: 16,
            text: "New activity",
            fontWeight: FontWeight.w400,
          ),

            

          //Fix cái list view
          
        ],
      ),
    );
  }
}
