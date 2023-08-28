import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieRate extends StatelessWidget {
  const MovieRate({super.key, this.vote});
  final String? vote;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Color(0xffFFD700),
          size: 22,
        ),
        Text(
          '${vote!}/10 IMDb',
          style:
              GoogleFonts.mulish(fontSize: 15, color: const Color(0xff9C9C9C)),
        )
      ],
    );
  }
}
