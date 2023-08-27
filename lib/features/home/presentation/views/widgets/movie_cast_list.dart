import 'package:flutter/widgets.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_cast_list_item.dart';

class MovieCastList extends StatelessWidget {
  const MovieCastList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index){
        return const MovieCastListItem();
      }
      );
  }
}