part of 'get_popular_movies_cubit.dart';

@immutable
sealed class GetPopularMoviesState {}

final class GetPopularMoviesInitial extends GetPopularMoviesState {}
final class GetPopularMoviesLoading extends GetPopularMoviesState {}
final class GetPopularMoviesFailure extends GetPopularMoviesState {
  final String errorMessage;
  GetPopularMoviesFailure(this.errorMessage);

}
final class GetPopularMoviesSuccess extends GetPopularMoviesState {
  final List<MovieModel> movies;
  GetPopularMoviesSuccess(this.movies);
}
