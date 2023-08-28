import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
      errorMessage, style: GoogleFonts.mulish(
        fontSize: 18,
        color: Colors.red,     
         ),
    ),);
  }
}