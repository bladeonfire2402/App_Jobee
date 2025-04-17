import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app_test/Controller/network__controller.dart';
import 'package:my_app_test/layout.dart';
import 'package:my_app_test/plugins/flutter__easyloading.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
    initConfig();
  }

  @override
  Widget build(BuildContext context) {
    //Đặt chế độ hiển thị là dọc
    Get.put(NetWorkController());

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    //Ẩn đi các thanh trạng thái và thanh điều hướng
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return ScreenUtilInit(
      // Khởi tạo ScreenUtil,cho resposive design
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder:
          (_, _) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: RootLayout(), // Replace with your actual home widget
          ),
    );
  }
}

void initConfig() {
  initEasyLoading();
}
