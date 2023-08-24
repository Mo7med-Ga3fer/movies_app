import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movies_app_bar.dart';

class MoviesHomeViewBody extends StatelessWidget {
  const MoviesHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MoviesAppBar(),
      ],
    );
  }
}