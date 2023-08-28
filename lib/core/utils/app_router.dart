import 'package:go_router/go_router.dart';
import 'package:movies_app/features/home/presentation/views/movies_home_view.dart';
import '../../features/splash/presenation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

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
    ],
  );
}
