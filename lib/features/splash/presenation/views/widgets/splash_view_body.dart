import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/movies_home_view.dart';
import 'package:movies_app/features/splash/presenation/views/widgets/animated_splash_view_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
                child: AnimatedSplashViewText()
              );
  }

   void navigateToHome() {
    Future.delayed(
      const Duration(milliseconds: 5000),
      (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MoviesHomeView()));
      }
    );}
}