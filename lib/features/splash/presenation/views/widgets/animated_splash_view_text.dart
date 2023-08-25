import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedSplashViewText extends StatelessWidget {
  const AnimatedSplashViewText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
                  totalRepeatCount: 40,
                  animatedTexts: [
                    FadeAnimatedText(
                      'FilmKu',
                      textStyle:  GoogleFonts.merriweather(
                          backgroundColor: const Color(0xffFF2E2E),
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    ScaleAnimatedText(
                      'Enjoy watching movies',
                      duration: const Duration(milliseconds: 4000),
                      textStyle:
                          const TextStyle(
                            color: Color(0xff110E47), 
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                            ),
                    ),
                  ],
                );
  }
}