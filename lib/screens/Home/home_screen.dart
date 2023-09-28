import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:movies_app_ui/components/masked_image.dart';
import 'package:movies_app_ui/components/search_widget.dart';
import 'package:movies_app_ui/models/movie.dart';
import 'package:movies_app_ui/utils/Assets/assets_manager.dart';
import 'package:movies_app_ui/utils/Colors/colors_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsManager.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManager.kGreenColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.4,
              right: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManager.kPinkColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManager.kCyanColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    'What would you\nlike to watch?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 29,
                      color: ColorsManager.kWhiteColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SearchWidget(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Popular Movies',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        color: ColorsManager.kWhiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  SizedBox(
                    height: 167,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = AssetsManager.kMaskFirstIndex;
                        } else if (index == newMovies.length - 1) {
                          mask = AssetsManager.kMaskLastIndex;
                        } else {
                          mask = AssetsManager.kMaskCenter;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: const EdgeInsets.only(left: 27),
                            width: index == 1 ? 162 : 136,
                            height: 167,
                            child: MaskedImage(
                              asset: newMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                      itemCount: newMovies.length,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Upcoming Movies',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        color: ColorsManager.kWhiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 167,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = AssetsManager.kMaskFirstIndex;
                        } else if (index == upcomingMovies.length - 1) {
                          mask = AssetsManager.kMaskLastIndex;
                        } else {
                          mask = AssetsManager.kMaskCenter;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: const EdgeInsets.only(left: 27),
                            width: index == 1 ? 162 : 136,
                            height: 167,
                            child: MaskedImage(
                              asset: upcomingMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                      itemCount: upcomingMovies.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 40),
        width: 71,
        height: 71,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorsManager.kGreenColor.withOpacity(0.2),
              ColorsManager.kPinkColor.withOpacity(0.2),
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(4),
          width: 62,
          height: 62,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorsManager.kGreenColor,
                ColorsManager.kPinkColor,
              ],
            ),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            fillColor: const Color(0xff4a5768),
            child: SvgPicture.asset(AssetsManager.kIconPlus),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: GlassmorphicContainer(
        alignment: Alignment.center,
        width: screenWidth,
        height: 70,
        borderRadius: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsManager.kWhiteColor.withOpacity(0.1),
            ColorsManager.kWhiteColor.withOpacity(0.1),
          ],
        ),
        border: 0,
        blur: 41,
        borderGradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsManager.kPinkColor,
            ColorsManager.kGreenColor,
          ],
        ),
        child: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AssetsManager.kIconHome,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AssetsManager.kIconPlay,
                    ),
                  ),
                ),
                const Expanded(child: Text('')),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AssetsManager.kIconPlayOnTv,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AssetsManager.kIconDownload,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
