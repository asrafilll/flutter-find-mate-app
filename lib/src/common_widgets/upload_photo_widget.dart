import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/color_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 180.0,
          height: 180.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage(
                AssetManager.profileIcon,
              ),
            ),
            border: Border.all(
              width: AppSize.s8,
              color: ColorManager.secondaryColor,
            ),
          ),
        ),
        Positioned(
          bottom: -25.0,
          child: SizedBox(
            width: AppSize.s50,
            height: AppSize.s50,
            child: Image.asset(
              AssetManager.addColorIcon,
            ),
          ),
        )
      ],
    );
  }
}
