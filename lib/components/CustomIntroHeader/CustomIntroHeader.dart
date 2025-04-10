import 'package:flutter/material.dart';
import 'dart:math';

class CustomIntroheader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperHeader(),
      child: Container(
        color: Colors.blue, // Màu nền của header
        height: 200, // Chiều cao header
      ),
    );
  }
}

class CustomClipperHeader extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Bắt đầu từ điểm (0, 0)
    path.lineTo(0, 0);

    // Vẽ một nửa hình tròn (arc) từ bên trái sang bên phải
    path.arcTo(
      Rect.fromCircle(center: Offset(size.width / 2, size.height), radius: size.width / 2),
      pi, // Góc bắt đầu (từ trái sang phải)
      pi, // Cắt nửa vòng cung (180 độ)
      false,
    );

    // Vẽ một đường thẳng lên điểm (0, 0)
    path.lineTo(0, 0);

    path.close(); // Đóng đường path lại

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
