import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';

class featureCardController extends GetxController {
  var bgCardColor = ColorConstants.primaryColor.obs; // Đặt tên rõ ràng hơn về mục đích sử dụng

  // Hàm thiết lập giá trị cho bgCardColor dựa trên category
  void setBgCard(String category) {
    switch (category) {
      case "IT":
        bgCardColor.value = ColorConstants.primaryColor;
        break;
      case "mee":
       
        break;
      case "":
      
        break;
      default:
       bgCardColor.value = ColorConstants.primaryColor;
    }
  }
}
