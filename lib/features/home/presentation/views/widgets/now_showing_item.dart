import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/utils/app_router.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_rate.dart';
import '../../../data/models/movie_model.dart';

class NowShowingItem extends StatelessWidget {
  const NowShowingItem({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kMovieDetailsView),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: AspectRatio(
          aspectRatio: 2 / 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.29,
                  child: AspectRatio(
                    aspectRatio: 2.8 / 4,
                    child: CachedNetworkImage(
                      imageUrl: 'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                      fit: BoxFit.fill,
                      ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                movie.title!,
                style: GoogleFonts.mulish(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MovieRate(vote: movie.voteAverage.toString(),),
            ],
          ),
        ),
      ),
    );
  }
}
