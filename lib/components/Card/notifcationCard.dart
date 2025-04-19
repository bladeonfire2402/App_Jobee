import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Data/fake_Model.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';

class NotifcationCard extends StatelessWidget {
  final NotificationModel notification;
  const NotifcationCard({Key? key,required this.notification}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        spacing: 10,
        children: [
          Image(
            width: 30,
            height: 30,
            image: CustomNetworkImage(notification.companyLogo)),
          Column(
            children: [
              CustomTitle(color: ColorConstants.textColor, fontSize: 18, text: notification.Title, fontWeight: FontWeight.w600),
              CustomTitle(color: ColorConstants.textColor, fontSize: 14, text: notification.content, fontWeight: FontWeight.w300),

              CustomTitle(color: ColorConstants.textColor, fontSize: 14, text:"47 min ago", fontWeight: FontWeight.w300),
            ],
          )
        ],
      ),
    );
  }
}
