import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';

class NewactivityNotifiy extends StatelessWidget {


  const NewactivityNotifiy({Key? key}) : super(key: key);

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
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: ((context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  child: Text("Bruh"),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
