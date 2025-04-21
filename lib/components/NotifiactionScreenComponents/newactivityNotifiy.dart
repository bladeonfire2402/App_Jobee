import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';

class NewactivityNotifiy extends StatelessWidget {


  const NewactivityNotifiy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Column(
        children: [
          CustomTitle(
            color: ColorConstants.fourthlyColor,
            fontSize: 16,
            text: "New activity",
            fontWeight: FontWeight.w400,
          ),

          //Fix cái list view
          ListView.builder(
            
            itemBuilder: ((context, index) {
              return Container();
            }),
          ),
        ],
      ),
    );
  }
}
