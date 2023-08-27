import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/widgets/custom_movie_details.dart';

class MovieDetailsViewBody extends StatelessWidget {
  const MovieDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_FMjpg_UX1000_.jpg"),
                fit: BoxFit.fill,
              ),
            )),
        const Expanded(child: CustomMovieDetails()),
      ],
    );
  }
}
