import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/widgets/now_showing_item.dart';

class NowShowingMoviesList extends StatelessWidget {
  const NowShowingMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const NowShowingItem();
          }),
    );
  }
}
