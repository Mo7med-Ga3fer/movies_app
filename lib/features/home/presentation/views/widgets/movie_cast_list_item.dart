import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieCastListItem extends StatelessWidget {
  const MovieCastListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: AspectRatio(
              aspectRatio: .7/.7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: NetworkImage('https://cdn.arageek.com/magazine/2020/02/66.jpg'),
                    fit: BoxFit.cover,
                    ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 7,),
          Text('SpiderMan', style: GoogleFonts.mulish(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}