import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app_ui/utils/Colors/colors_manager.dart';
import 'package:movies_app_ui/utils/Sizes/size_config.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: ColorsManager.kBlackColor,
      body: SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: SizeConfig.screenHeight! * 0.1,
              left: -88,
              child: Container(
                width: 166,
                height: 166,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManager.kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: const SizedBox(
                    width: 166,
                    height: 166,
                  ),
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.screenHeight! * 0.3,
              right: -100,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManager.kGreenColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: const SizedBox(
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
