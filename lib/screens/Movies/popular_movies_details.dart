import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app_ui/components/masked_image.dart';
import 'package:movies_app_ui/components/navigator.dart';
import 'package:movies_app_ui/models/movie.dart';
import 'package:movies_app_ui/utils/Assets/assets_manager.dart';
import 'package:movies_app_ui/utils/Colors/colors_manager.dart';

class PopularMoviesDetailsScreen extends StatelessWidget {
  const PopularMoviesDetailsScreen({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  ColorsManager.kBlackColor,
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    height: screenHeight * 0.5,
                    width: screenWidth,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(newMovies[index].moviePoster),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.05,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            pop(context);
                          },
                          child: Container(
                            width: 46,
                            height: 46,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 3,
                                color: ColorsManager.kWhiteColor,
                              ),
                              // shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              AssetsManager.kIconBack,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 46,
                            height: 46,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 3,
                                color: ColorsManager.kWhiteColor,
                              ),
                              // shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              AssetsManager.kIconMenu,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.41,
                  right: 9,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    width: 64,
                    height: 64,
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
                      padding: const EdgeInsets.all(3),
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
                        fillColor: const Color(0xFF31353A),
                        child: SvgPicture.asset(AssetsManager.kIconPlay),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: screenHeight * 0.5,
                    transform:
                        Matrix4.translationValues(0, -screenHeight * 0.05, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.7,
                          child: Column(
                            children: [
                              Text(
                                newMovies[index].movieName,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: ColorsManager.kWhiteColor.withOpacity(
                                    0.85,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight <= 568 ? 10 : 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    newMovies[index].movieReleaseYear,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          ColorsManager.kWhiteColor.withOpacity(
                                        0.75,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorsManager.kGreyColor,
                                    ),
                                  ),
                                  Text(
                                    newMovies[index].movieCategory,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          ColorsManager.kWhiteColor.withOpacity(
                                        0.75,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorsManager.kGreyColor,
                                    ),
                                  ),
                                  Text(
                                    newMovies[index].movieDuration,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          ColorsManager.kWhiteColor.withOpacity(
                                        0.75,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              RatingBar.builder(
                                itemSize: 14,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: ColorsManager.kYellowColor,
                                ),
                                onRatingUpdate: (rating) {
                                  debugPrint(rating.toString());
                                },
                                unratedColor: ColorsManager.kWhiteColor,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                newMovies[index].movieSinopsis,
                                textAlign: TextAlign.center,
                                maxLines: screenHeight <= 568 ? 2 : 4,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: ColorsManager.kWhiteColor.withOpacity(
                                    0.75,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Container(
                          height: 2,
                          width: screenWidth * 0.8,
                          color: ColorsManager.kWhiteColor.withOpacity(0.15),
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 23,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'Casts',
                                        style: TextStyle(
                                          color: ColorsManager.kWhiteColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight <= 568 ? 9 : 12,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        minRadius: 14,
                                        maxRadius: screenWidth <= 375 ? 16 : 25,
                                        backgroundImage: const NetworkImage(
                                          'https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg',
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          constraints: const BoxConstraints(
                                            maxHeight: 40,
                                            maxWidth: 112,
                                          ),
                                          transform: Matrix4.translationValues(
                                              -6, 0, 0),
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              const MaskedImage(
                                                asset: AssetsManager.kMaskCast,
                                                mask: AssetsManager.kMaskCast,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 16.0,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    newMovies[index]
                                                        .movieCastName[0]
                                                        .toString(),
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                    ),
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        minRadius: 14,
                                        maxRadius: screenWidth <= 375 ? 16 : 25,
                                        backgroundImage: const NetworkImage(
                                          'https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg',
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          constraints: const BoxConstraints(
                                            maxHeight: 40,
                                            maxWidth: 112,
                                          ),
                                          transform: Matrix4.translationValues(
                                              -6, 0, 0),
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              const MaskedImage(
                                                asset: AssetsManager.kMaskCast,
                                                mask: AssetsManager.kMaskCast,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 16.0,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    newMovies[index]
                                                        .movieCastName[1]
                                                        .toString(),
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                    ),
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        minRadius: 16,
                                        maxRadius: screenWidth <= 375 ? 18 : 25,
                                        backgroundImage: const NetworkImage(
                                          'https://m.media-amazon.com/images/M/MV5BODg3MzYwMjE4N15BMl5BanBnXkFtZTcwMjU5NzAzNw@@._V1_.jpg',
                                        ),
                                      ),
                                      Container(
                                        constraints: const BoxConstraints(
                                          maxHeight: 40,
                                          maxWidth: 112,
                                        ),
                                        transform:
                                            Matrix4.translationValues(-6, 0, 0),
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            const MaskedImage(
                                              asset: AssetsManager.kMaskCast,
                                              mask: AssetsManager.kMaskCast,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 16.0,
                                              ),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  newMovies[index]
                                                      .movieCastName[2]
                                                      .toString(),
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
