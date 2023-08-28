import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/features/home/data/models/movie_model.dart';
import 'package:movies_app/features/home/presentation/views/movie_details_view.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_duration.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_kind.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_rate.dart';

class PopularMoviesListItem extends StatelessWidget {
  const PopularMoviesListItem({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetailsView(movie: movie)));
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Row(children: [
          AspectRatio(
            aspectRatio: 2.9 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500${movie.posterPath}'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title!,
                style: GoogleFonts.mulish(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              MovieRate(vote: movie.voteAverage.toString(),),
              const SizedBox(
                height: 9,
              ),
              const MovieKind(),
              const SizedBox(
                height: 9,
              ),
              const MovieDuration(),
            ],
          ),
        ]),
      ),
    );
  }
}
