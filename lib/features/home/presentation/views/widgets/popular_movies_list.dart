import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/widgets/popular_movies_list_item.dart';

class PoPularMoviesList extends StatelessWidget {
  const PoPularMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
            child: PopularMoviesListItem(),
          );
        });
  }
}
