import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Subtitle extends StatelessWidget {
  final String text;
  final Color? color;

  const Subtitle({Key? key, required this.text,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins( // Sử dụng Google Font "Roboto"
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color, // Sử dụng màu chính từ ColorConstants
      ), // Correctly closed the parenthesis here
    );
  }
}