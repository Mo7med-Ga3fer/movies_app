import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_router.dart';
import 'package:movies_app/features/home/data/repos/home_repo_impl.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movies_cubit/get_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_popular_movies_cubit/get_popular_movies_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetMoviesCubit(HomeRepoImpl()),
        ),
        BlocProvider(
          create: (context) => GetPopularMoviesCubit(HomeRepoImpl()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      )
      );
  }
}
