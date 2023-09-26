import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app_ui/components/custom_outline.dart';
import 'package:movies_app_ui/components/navigator.dart';
import 'package:movies_app_ui/screens/Home/home_screen.dart';
import 'package:movies_app_ui/utils/Assets/assets_manager.dart';
import 'package:movies_app_ui/utils/Colors/colors_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
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
              top: screenHeight * 0.3,
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
            Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight <= 568
                          ? screenHeight * 0.02
                          : screenHeight * 0.07,
                    ),
                    CustomOutline(
                      strokeWidth: 4,
                      radius: screenWidth * 0.8,
                      padding: const EdgeInsets.all(4),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          ColorsManager.kPinkColor,
                          ColorsManager.kPinkColor.withOpacity(0),
                          ColorsManager.kGreenColor.withOpacity(0.1),
                          ColorsManager.kGreenColor,
                        ],
                        stops: const [0.2, 0.4, 0.6, 1],
                      ),
                      width: screenWidth * 0.8,
                      height: screenWidth * 0.8,
                      child: Container(
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              ColorsManager.kPinkColor.withOpacity(0.3),
                              ColorsManager.kPinkColor.withOpacity(0.1),
                              ColorsManager.kGreenColor.withOpacity(0.1),
                              ColorsManager.kGreenColor,
                            ],
                          ),
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage(AssetsManager.kOnBoarding),
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.bottomLeft,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.09,
                    ),
                    Text(
                      'Watch movies in \n Virtual Reality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenHeight <= 568 ? 18 : 34,
                        fontWeight: FontWeight.w700,
                        color: ColorsManager.kWhiteColor.withOpacity(0.8),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Text(
                      'Download and watch offline\n wherever you are',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenHeight <= 568 ? 12 : 16,
                        fontWeight: FontWeight.w100,
                        color: ColorsManager.kWhiteColor.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const HomeScreen());
                      },
                      child: CustomOutline(
                        strokeWidth: 3,
                        radius: 20,
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            ColorsManager.kPinkColor,
                            ColorsManager.kGreenColor,
                          ],
                        ),
                        width: 160,
                        height: 38,
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                ColorsManager.kPinkColor.withOpacity(0.5),
                                ColorsManager.kGreenColor.withOpacity(0.5),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenHeight <= 568 ? 11 : 15,
                                fontWeight: FontWeight.w700,
                                color: ColorsManager.kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          height: 7,
                          width: 7,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == 0
                                  ? ColorsManager.kGreenColor
                                  : index == 1
                                      ? ColorsManager.kWhiteColor
                                          .withOpacity(0.2)
                                      : ColorsManager.kWhiteColor
                                          .withOpacity(0.2)),
                        );
                      }),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
