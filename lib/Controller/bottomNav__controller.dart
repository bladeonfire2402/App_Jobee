import 'package:get/get.dart';


class BottomNavigationController extends GetxController {
  RxInt _page = 0.obs;

  int get page => _page.value;

  void swap(int index) {
    _page.value = index;
  }
}