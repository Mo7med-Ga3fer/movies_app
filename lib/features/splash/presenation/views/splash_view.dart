import 'package:flutter/material.dart';
import 'package:movies_app/features/splash/presenation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SplashViewBody()),
    );
  }
}