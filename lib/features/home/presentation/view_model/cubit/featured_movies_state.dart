part of 'featured_movies_cubit.dart';

@immutable
sealed class FeaturedMoviesState {}

final class FeaturedMoviesInitial extends FeaturedMoviesState {}
final class FeaturedMoviesLoading extends FeaturedMoviesState {}
final class FeaturedMoviesFailure extends FeaturedMoviesState {
  final String errorMessage;
  FeaturedMoviesFailure({required this.errorMessage});
}
final class FeaturedMoviesSuccess extends FeaturedMoviesState {
  final List<MovieModel> movies;
  FeaturedMoviesSuccess({required this.movies});
}
