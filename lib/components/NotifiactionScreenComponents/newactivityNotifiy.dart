import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';

class NewactivityNotifiy extends StatelessWidget {


  const NewactivityNotifiy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTitle(
            color: ColorConstants.fourthlyColor,
            fontSize: 16,
            text: "New activity",
            fontWeight: FontWeight.w400,
          ),
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
