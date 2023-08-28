import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/widgets/custom_error_widget.dart';
import 'package:movies_app/core/widgets/custom_loading_indicator.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movies_cubit/get_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_popular_movies_cubit/get_popular_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/views/widgets/popular_movies_list_item.dart';

class PoPularMoviesList extends StatelessWidget {
  const PoPularMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPopularMoviesCubit, GetPopularMoviesState>(
      builder: (context, state) {
        if (state is GetPopularMoviesSuccess) {
          return ListView.builder(
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  child: PopularMoviesListItem(movie: state.movies[index],),
                );
              });
        }else if(state is GetPopularMoviesFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
