import 'package:get/get.dart';

class FragmentController extends GetxController {
  var x = 0.0;
  var y = 0.0;

  setNewLocation(newY, newX) {
    x = newX;
    y = newY;
  }
}
