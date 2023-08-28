import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/features/home/data/models/movie_model.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_cast_list.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_kind.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_rate.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_traits.dart';
import 'package:movies_app/features/home/presentation/views/widgets/title_movies_section.dart';

class CustomMovieDetails extends StatelessWidget {
  const CustomMovieDetails({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movie.title!,
            style: GoogleFonts.mulish(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          MovieRate(vote: movie.voteAverage.toString(),),
          const SizedBox(
            height: 12,
          ),
          const MovieKind(),
          const SizedBox(
            height: 12,
          ),
          const MovieTraits(),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Description',
            style: GoogleFonts.merriweather(
                fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            movie.overview!,
            style: GoogleFonts.mulish(
              fontSize: 15,
              color: const Color(0xff9C9C9C),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TitleMoviesSection(
            title: 'Cast',
            paddingValue: 0,
          ),
          const SizedBox(
            height: 25,
          ),
          const Expanded(child: MovieCastList()),
        ],
      ),
    );
  }
}
