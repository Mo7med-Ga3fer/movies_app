import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/widgets/custom_error_widget.dart';
import 'package:movies_app/core/widgets/custom_loading_indicator.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movies_cubit/get_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/views/widgets/now_showing_item.dart';

class NowShowingMoviesList extends StatelessWidget {
  const NowShowingMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMoviesCubit, GetMoviesState>(
      builder: (context, state) {
        if (state is GetMoviesSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.movies.length,
                itemBuilder: (context, index) {
                  return NowShowingItem(movie: state.movies[index],);
                }),
          );
        }else if(state is GetMoviesFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
