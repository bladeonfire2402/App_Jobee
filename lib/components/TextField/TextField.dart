import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app_test/Utils/Constants/color__constant.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String titleText;

  const MyTextfield({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.titleText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins( // Sử dụng Google Font "Roboto"
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: ColorConstants.textColor, // Sử dụng màu chính từ ColorConstants
      ), //
        ),
      ),
    );
  }
}