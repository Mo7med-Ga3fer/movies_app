import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieKindItem extends StatelessWidget {
  const MovieKindItem({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
      decoration: BoxDecoration(
        color: const Color(0xff88A4E8).withOpacity(.25),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          txt,
          style:
              GoogleFonts.mulish(color: const Color(0xff88A4E8), fontSize: 12),
        ),
      ),
    );
  }
}
