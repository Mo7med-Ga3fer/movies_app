import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MoviesAppBar extends StatelessWidget {
  const MoviesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){},
           icon: const FaIcon(FontAwesomeIcons.barsStaggered,),
           ),
        Text('FilmKu', style: GoogleFonts.merriweather(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        IconButton(
          onPressed: (){},
           icon: const FaIcon(FontAwesomeIcons.magnifyingGlass,),
           ),
      ],
    );
  }
}