import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/features/home/data/models/movie_model.dart';
import 'package:movies_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo
{
  @override
  Future<Either<Failure, List<MovieModel>>> fetchMovies() {
    // TODO: implement fetchMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchPopularMovies() {
    // TODO: implement fetchPopularMovies
    throw UnimplementedError();
  }

}