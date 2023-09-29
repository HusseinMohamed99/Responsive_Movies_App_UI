import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app_ui/screens/OnBoarding/onboarding_screen.dart';
import 'package:movies_app_ui/utils/Colors/colors_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorsManager.kBlackColor,
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
