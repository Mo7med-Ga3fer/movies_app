import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/features/home/data/models/movie_model.dart';

part 'featured_movies_state.dart';

class FeaturedMoviesCubit extends Cubit<FeaturedMoviesState> {
  FeaturedMoviesCubit() : super(FeaturedMoviesInitial());
}
