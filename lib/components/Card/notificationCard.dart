import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Data/fake_Model.dart';
import 'package:my_app_test/components/ImageComponents/customImage.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;
  const NotificationCard({Key? key, required this.notification})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
         
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
        
              
            ],
          ),
        ],
      ),
    );
  }
}
