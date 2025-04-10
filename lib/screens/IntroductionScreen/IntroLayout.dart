import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';
import 'package:my_app_test/screens/IntroductionScreen/IntroFirst.dart';
import 'package:my_app_test/screens/IntroductionScreen/IntroFouth.dart';
import 'package:my_app_test/screens/IntroductionScreen/IntroSecond.dart';
import 'package:my_app_test/screens/IntroductionScreen/IntroThird.dart';

class Introlayout extends StatelessWidget {
  // Moving the initialization of _widgetOptions to the build method
  List<Widget> _widgetOptions() {
    return [
      Introfirst(), 
      IntroSecond(),
      IntroThird(),
      Introfouth()
    ];
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double radius = 240; // Bán kính hình tròn

    return Scaffold(
      body: Stack(
        children: [
          // Hình tròn lớn sẽ được đặt trong Stack và vượt qua màn hình
          Positioned(
            top: (-radius / 2 - 60) * 2,  // Đẩy hình tròn ra ngoài một chút ở phía trên
            left: screenWidth - radius - 80 - (radius / 2), // Đặt hình tròn ở giữa
            child: Container(
              width: radius * 2,  // Đặt chiều rộng của hình tròn
              height: radius * 2,  // Đặt chiều cao của hình tròn
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorConstants.thirdlyColor, // Màu của hình tròn
              ),
            ),
          ),
          // Phần body
          Positioned(
            top: 150,
            child: Column(
              children: [
                // Phần nội dung thay đổi khi chọn tab
                Container(
                  width: screenWidth,
                  height: screenHeight-180 , // Đặt chiều cao của phần nội dung
                  child: Swiper(
                    itemBuilder: (BuildContext context,int index){
                      return _widgetOptions()[index]; // Sử dụng hàm _widgetOptions để lấy nội dung
                    },
                    itemCount: _widgetOptions().length,
                    pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                        color: ColorConstants.textColor3,
                        activeColor: ColorConstants.primaryColor,
                      ),
                    ),
                  ), // Hiển thị nội dung của tab đã chọn
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
