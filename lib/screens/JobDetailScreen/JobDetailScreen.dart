import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Controller/fragment__controler.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/Utils/Constants/image__constants.dart';
import 'package:my_app_test/models/JobModels/JobModel.dart';
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
    List<Widget> buildFragment1() {
      List<Widget> fragments = [];
      Random random = Random();

      for (int i = 0; i < 3; i++) {
        // Cập nhật vị trí
        int randomDouble = random.nextInt(300);
        int randomDob = random.nextInt(280);
        fragmentController.setNewLocation(
          x + randomDouble,
          y + randomDob,
        );

        fragments.add(
          Positioned(
            top: fragmentController.x,
            left: fragmentController.y,
            child: Opacity(
              opacity: 0.4,
              child: Image.asset(width: 20, height: 20, MyImage.fragment_bg1)),
          ),
        );
      }
      return fragments;
    }

    List<Widget> buildFragment2() {
      List<Widget> fragments = [];
      Random random = Random();

      for (int i = 0; i < 3; i++) {
        // Cập nhật vị trí
        int randomDouble = random.nextInt(300);
        int randomDob = random.nextInt(280);
        fragmentController.setNewLocation(
          x + randomDouble,
          y + randomDob,
        );

        fragments.add(
          Positioned(
            top: fragmentController.x,
            left: fragmentController.y,
            child: Opacity(
               opacity: 0.4,
              child: Image.asset(width: 20, height: 20, MyImage.fragment_bg2)),
          ),
        );
      }
      return fragments;
    }

    List<Widget> buildFragment3() {
      List<Widget> fragments = [];
      Random random = Random();

      for (int i = 0; i < 3; i++) {
        // Cập nhật vị trí
        int randomDouble = random.nextInt(300);
        int randomDob = random.nextInt(280);
        fragmentController.setNewLocation(
          x + randomDouble,
          y + randomDob,
        );

        fragments.add(
          Positioned(
            top: fragmentController.x,
            left: fragmentController.y,
            child: Opacity(
               opacity: 0.4,
              child: Image.asset(width: 20, height: 20, MyImage.fragment_bg3)),
          ),
        );
      }
      return fragments;
    }

    List<Widget> buildFragment4() {
      List<Widget> fragments = [];
      Random random = Random();

      for (int i = 0; i < 3; i++) {
        // Cập nhật vị trí
        int randomDouble = random.nextInt(300);
        int randomDob = random.nextInt(280);
        fragmentController.setNewLocation(
          x + randomDouble,
          y + randomDob,
        );

        fragments.add(
          Positioned(
            top: fragmentController.x,
            left: fragmentController.y,
            child: Opacity(
               opacity: 0.4,
              child: Image.asset(width: 20, height: 20, MyImage.fragment_bg4)),
          ),
        );
      }
      return fragments;
    }

    List<Widget> buildFragment5() {
      List<Widget> fragments = [];
      Random random = Random();

      for (int i = 0; i < 3; i++) {
        // Cập nhật vị trí
        int randomDouble = random.nextInt(300);
        int randomDob = random.nextInt(280);
        fragmentController.setNewLocation(
          x + randomDouble,
          y + randomDob,
        );

        fragments.add(
          Positioned(
            top: fragmentController.x,
            left: fragmentController.y,
            child: Opacity(
               opacity: 0.4,
              child: Image.asset(width: 20, height: 20, MyImage.fragment_bg5)),
          ),
        );
      }
      return fragments;
    }


    List<Widget> buildFragment6() {
      List<Widget> fragments = [];
      Random random = Random();

      for (int i = 0; i < 3; i++) {
        // Cập nhật vị trí
        int randomDouble = random.nextInt(300);
        int randomDob = random.nextInt(280);
        fragmentController.setNewLocation(
          x + randomDouble,
          y + randomDob,
        );

        fragments.add(
          Positioned(
            top: fragmentController.x,
            left: fragmentController.y,
            child: Opacity(
              opacity: 0.4,
              child: Image.asset(width: 20, height: 20, MyImage.fragment_bg6)),
          ),
        );
      }
      return fragments;
    }



    




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
                      ...buildFragment1(),
                      ...buildFragment2(),
                      ...buildFragment3(),
                      ...buildFragment4(),
                      ...buildFragment5(),
                      ...buildFragment6(),

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
