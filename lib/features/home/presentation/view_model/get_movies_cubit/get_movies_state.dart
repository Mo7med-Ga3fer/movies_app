part of 'get_movies_cubit.dart';

@immutable
sealed class GetMoviesState {}

final class GetMoviesInitial extends GetMoviesState {}
final class GetMoviesLoading extends GetMoviesState {}
final class GetMoviesFailure extends GetMoviesState {
  final String errorMessage;
  GetMoviesFailure(this.errorMessage);
}
final class GetMoviesSuccess extends GetMoviesState {
  final List<MovieModel> movies;
  GetMoviesSuccess(this.movies);
}
