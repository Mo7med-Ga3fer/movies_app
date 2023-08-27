import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieTraits extends StatelessWidget {
  const MovieTraits({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          Text('Length', style: GoogleFonts.mulish(
              fontSize: 15,
              color: const Color(0xff9C9C9C),
            ),),
          const SizedBox(height: 3,),
          Text('2h 28min', style: GoogleFonts.mulish(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
        ],),
        const Spacer(flex: 1,),
        Column(children: [
          Text('Language', style: GoogleFonts.mulish(
              fontSize: 15,
              color: const Color(0xff9C9C9C),
            ),),
          const SizedBox(height: 3,),
          Text('English', style: GoogleFonts.mulish(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
        ],),
        const Spacer(flex: 1,),
        Column(children: [
          Text('Rating', style: GoogleFonts.mulish(
              fontSize: 15,
              color: const Color(0xff9C9C9C),
            ),),
          const SizedBox(height: 3,),
          Text('PG-13', style: GoogleFonts.mulish(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),),
        ],),
        const Spacer(flex: 2,)
      ],
    );
  }
}
