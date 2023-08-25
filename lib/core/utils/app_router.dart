import 'package:go_router/go_router.dart';
import 'package:movies_app/features/home/presentation/views/movie_details_view.dart';
import 'package:movies_app/features/home/presentation/views/movies_home_view.dart';
import '../../features/splash/presenation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kMovieDetailsView = '/movieDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const MoviesHomeView(),
      ),
      GoRoute(
        path: kMovieDetailsView,
        builder: (context, state) => const MovieDetailsView(),
      ),
    ],
  );
}