import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/features/home/data/models/movie_model.dart';
import 'package:movies_app/features/home/data/repos/home_repo.dart';

part 'get_popular_movies_state.dart';

class GetPopularMoviesCubit extends Cubit<GetPopularMoviesState> {
  GetPopularMoviesCubit(this.homeRepo) : super(GetPopularMoviesInitial());
  final HomeRepo homeRepo;

  Future<void> fetchGetPopularMovies() async{
    emit(GetPopularMoviesLoading());
    var result = await homeRepo.fetchPopularMovies();
    result.fold(
      (failure) {
        emit(GetPopularMoviesFailure(failure.message));
      },
       (movies) {
        emit(GetPopularMoviesSuccess(movies));
       }
       );
  }
}
