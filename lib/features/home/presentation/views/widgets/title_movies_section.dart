import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleMoviesSection extends StatelessWidget {
  const TitleMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Text('Now Showing', style: GoogleFonts.merriweather(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'See more',
                style: GoogleFonts.mulish(
                  color: const Color(0xffAAA9B1),
                  fontSize: 12
                ),
                ),
            ),
          ),
         ],
      ),
    );
  }
}