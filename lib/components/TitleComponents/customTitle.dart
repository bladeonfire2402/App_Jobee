import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight fontWeight;

  const CustomTitle({
    Key? key,
    required this.color,
    required this.fontSize,
    required this.text,
    required this.fontWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        // Sử dụng Google Font "Roboto"
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: color, // Sử dụng màu chính từ ColorConstants
      ), // Correctly closed the parenthesis here
    );
  }
}
