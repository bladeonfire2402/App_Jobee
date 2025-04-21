import 'package:flutter/widgets.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/components/NotifiactionScreenComponents/newactivityNotifiy.dart';
import 'package:my_app_test/components/TitleComponents/customTitle.dart';

class NotificationScreen extends StatelessWidget {
const NotificationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 15,
        ),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.center,
              child: CustomTitle(color: ColorConstants.textColor, fontSize: 20, text: "Notification", fontWeight: FontWeight.w600),
            ),

            NewactivityNotifiy(),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}