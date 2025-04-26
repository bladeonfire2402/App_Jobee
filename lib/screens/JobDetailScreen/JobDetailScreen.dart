import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Controller/fragment__controler.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/models/JobModels/jobModel.dart';
import 'dart:math'; // Đảm bảo import đúng thư viện

class JobDetailScreen extends StatelessWidget {
  final JobModel job;
  const JobDetailScreen({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double x = 0.0;
    final double y = 0.0;

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final FragmentController fragmentController = Get.put(FragmentController());

    // Thêm các hình ảnh fragment động
    List<Widget> fragList1 = [];
    List<Widget> fragList2 = [];
    List<Widget> fragList3 = [];
    List<Widget> fragList4 = [];
    List<Widget> fragList5 = [];
    List<Widget> fragList6 = [];
    List<Widget> fragList7 = [];
    List<Widget> fragList8 = [];
    List<Widget> fragList9 = [];
    List<Widget> fragList10 = [];
    

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: screenWidth,
            height: screenHeight,
            child: Stack(
              children: [
                Positioned(
                  top: 0, // Đẩy hình tròn ra ngoài một chút ở phía trên
                  left: 0,
                  child: Stack(
                    children: [
                      Container(
                        width: screenWidth, // Ensure the width is defined
                        height: 280,
                        decoration: BoxDecoration(
                          color: ColorConstants.primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(40, 30),
                            bottomRight: Radius.elliptical(40, 30),
                          ),
                        ),
                      ),

                      // Thêm các fragment động vào Stack
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg1, x, y, fragList1),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg2, x, y, fragList2),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg3, x, y, fragList3),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg4, x, y, fragList4),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg5, x, y, fragList5),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg6, x, y, fragList6),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg7, x, y, fragList7),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg8, x, y, fragList8),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg11, x, y, fragList9),
                      ...fragmentController.buildFragment(fragmentController, MyImage.fragment_bg10, x, y, fragList10),        
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
