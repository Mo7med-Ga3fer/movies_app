import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_kind_item.dart';

class MovieKind extends StatelessWidget {
  const MovieKind({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MovieKindItem(
          txt: 'ACTION',
        ),
        SizedBox(width: 10,),
        MovieKindItem(
          txt: 'ADVANTURE',
        ),
      ],
    );
  }
}