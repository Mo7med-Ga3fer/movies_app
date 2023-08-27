import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movies_app_bar.dart';
import 'package:movies_app/features/home/presentation/views/widgets/now_showing_movies_list.dart';
import 'package:movies_app/features/home/presentation/views/widgets/popular_movies_list.dart';
import 'package:movies_app/features/home/presentation/views/widgets/title_movies_section.dart';

class MoviesHomeViewBody extends StatelessWidget {
  const MoviesHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MoviesAppBar(),
        SizedBox(
          height: 20,
        ),
        TitleMoviesSection(
          title: 'Now Showing',
        ),
        SizedBox(
          height: 20,
        ),
        NowShowingMoviesList(),
        TitleMoviesSection(
          title: 'Popular',
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(child: PoPularMoviesList()),
      ],
    );
  }
}
