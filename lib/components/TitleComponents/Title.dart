import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TitleWidgetH1 extends StatelessWidget {
  final String text;
  final Color? color;

  const TitleWidgetH1({Key? key, required this.text,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins( // Sử dụng Google Font "Roboto"
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: color, // Sử dụng màu chính từ ColorConstants
      ), // Correctly closed the parenthesis here
    );
  }
}