import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movies_home_view_body.dart';

class MoviesHomeView extends StatelessWidget {
  const MoviesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MoviesHomeViewBody(),
    );
  }
}