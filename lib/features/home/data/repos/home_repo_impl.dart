import 'package:dartz/dartz.dart';
import 'package:movies_app/core/errors/failure.dart';
import 'package:movies_app/core/utils/api_service.dart';
import 'package:movies_app/features/home/data/models/movie_model.dart';
import 'package:movies_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo
{
  final apoService = ApiService();
  @override
  Future<Either<Failure, List<MovieModel>>> fetchMovies() async{
    try {
  var data = await apoService.get(endPoint:'discover/movie?api_key=7f46651666f1ca68e4cf0cb150551f07');
  List<MovieModel> movies = [];
  for(var result in data['results']){
    movies.add(MovieModel.fromJson(result));
  }
  return right(movies);
} catch (e) {
  return left(ServerFailure());
}
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchPopularMovies() {
    // TODO: implement fetchPopularMovies
    throw UnimplementedError();
  }

}