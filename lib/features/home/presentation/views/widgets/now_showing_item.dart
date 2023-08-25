import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_rate.dart';

class NowShowingItem extends StatelessWidget {
  const NowShowingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: AspectRatio(
        aspectRatio: 2/4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.29,
              child: AspectRatio(
                aspectRatio: 2.8/4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: NetworkImage('https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_FMjpg_UX1000_.jpg'),
                      fit: BoxFit.fill,
                      ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7,),
            Text('Spiderman: No Way Home',
            style: GoogleFonts.mulish(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            const MovieRate(),
          ],
        ),
      ),
    );
  }
}