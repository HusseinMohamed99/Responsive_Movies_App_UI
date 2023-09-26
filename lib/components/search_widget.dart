import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app_ui/utils/Assets/assets_manager.dart';
import 'package:movies_app_ui/utils/Colors/colors_manager.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key, required this.padding}) : super(key: key);
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: ColorsManager.kGreyColor.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              AssetsManager.kIconSearch,
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: ColorsManager.kWhiteColor.withOpacity(0.6),
                  fontSize: 17,
                  letterSpacing: -0.41,
                ),
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  isDense: true,
                  hintStyle: TextStyle(
                    color: ColorsManager.kWhiteColor.withOpacity(0.6),
                    fontSize: 17,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(AssetsManager.kIconMic),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
