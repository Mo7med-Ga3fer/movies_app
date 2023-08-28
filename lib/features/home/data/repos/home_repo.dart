import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/features/home/data/models/movie_model.dart';

abstract class HomeRepo
{
  Future<Either<Failure,List<MovieModel>>> fetchMovies();
  Future<Either<Failure,List<MovieModel>>> fetchPopularMovies();
}