import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/features/home/data/models/movie_model.dart';
import 'package:movies_app/features/home/data/repos/home_repo.dart';

part 'get_movies_state.dart';

class GetMoviesCubit extends Cubit<GetMoviesState> {
  GetMoviesCubit(this.homeRepo) : super(GetMoviesInitial());
  final HomeRepo homeRepo;

  Future<void> fetchGetMovies() async{
    emit(GetMoviesLoading());
    var result = await homeRepo.fetchMovies();
    result.fold(
      (failure) {
        emit(GetMoviesFailure(failure.message));
      },
      (movies) {
        emit(GetMoviesSuccess(movies));
      });
  }
}
