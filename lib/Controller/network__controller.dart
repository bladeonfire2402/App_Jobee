import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetWorkController extends GetxController {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    // Listen to connectivity changes and handle a list of results
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(List<ConnectivityResult> connectivityResults) {
    // Check the first result in the list (you can adjust based on your needs)
    final connectivityResult = connectivityResults.isNotEmpty ? connectivityResults.first : ConnectivityResult.none;

    if (connectivityResult == ConnectivityResult.none) {
      Get.snackbar(
        "Không có mạng", // Title in Vietnamese
        "Vui lòng kiểm tra lại kết nối mạng", // Message in Vietnamese
        snackPosition: SnackPosition.BOTTOM,
        isDismissible: false,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red.withOpacity(0.8),
        icon: const Icon(Icons.wifi_off, color: Colors.white),
        margin: const EdgeInsets.all(10),
        snackStyle: SnackStyle.GROUNDED,
      );
    }
  }
}
