import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';


class FragmentController extends GetxController {
  var x = 0.0;
  var y = 0.0;

  setNewLocation(newY, newX) {
    x = newX;
    y = newY;
  }

  List<Widget> buildFragment(FragmentController fragmentController, String img,x,y, List<Widget>fragments) {
      Random random = Random();

      for (int i = 0; i < 4; i++) {
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
              child: Image.asset(width: 20, height: 20, img)),
          ),
        );
      }
      return fragments;
    }

  
}
