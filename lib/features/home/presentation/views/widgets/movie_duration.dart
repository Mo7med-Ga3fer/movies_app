import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDuration extends StatelessWidget {
  const MovieDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.clock,
          size: 14,
        ),
        const SizedBox(width: 5,),
        Text(
              '2h 28m',
              style: GoogleFonts.mulish(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),),
      ],
    );
  }
}