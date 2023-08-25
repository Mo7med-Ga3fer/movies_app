import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_duration.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_kind.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_rate.dart';

class PopularMoviesListItem extends StatelessWidget {
  const PopularMoviesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
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
          const SizedBox(width: 10,),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Spiderman: No Way Home',
              style: GoogleFonts.mulish(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 9,),
            const MovieRate(),
            const SizedBox(height: 9,),
            const MovieKind(),
            const SizedBox(height: 9,),
            const MovieDuration(),
          ],
        ),
        ]
        ),
    );
  }
}