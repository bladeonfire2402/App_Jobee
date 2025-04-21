import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Controller/bottomNav__controller.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/screens/HomeScreen/HomeScreen.dart';
import 'package:my_app_test/screens/NotificationScreens/NotificationScreen.dart';

class Clientlayout extends StatefulWidget {
  @override
  _ClientlayoutState createState() => _ClientlayoutState();
}



class _ClientlayoutState extends State<Clientlayout> {
  final BottomNavigationController c = Get.put(BottomNavigationController());

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: ColorConstants.primaryColor,
        backgroundColor: ColorConstants.textColor2,
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.home, size: 30,color: ColorConstants.textColor2,),
          Icon(Icons.notifications, size: 30,color: ColorConstants.textColor2),
          Icon(Icons.bookmark, size: 30,color: ColorConstants.textColor2),
          Icon(Icons.category_outlined, size: 30,color: ColorConstants.textColor2),
          Icon(Icons.account_circle_sharp,size: 30,color: ColorConstants.textColor2,)
        ],
        onTap: (index) {
          c.swap(index);
        },
      ),
      body: Obx(() {
        // Using Obx to listen for changes in the page index
        switch (c.page) {
          case 0:
            return Homescreen();
          case 1:
            return NotificationScreen();
          case 2:
            return _buildBookmarkPage();
          case 3:
            return _buildCategoryPage();
          default:
            return _buildHomePage();
        }
      }),
    );
  }

  Widget _buildHomePage() {
    return Center(child: Text('Home Page'));
  }

  Widget _buildNotificationsPage() {
    return Center(child: Text('Notifications Page'));
  }

  Widget _buildBookmarkPage() {
    return Center(child: Text('Bookmark Page'));
  }

  Widget _buildCategoryPage() {
    return Center(child: Text('Category Page'));
  }
}
