import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/color_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({
    super.key,
    required this.image,
  });

  final File? image;
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
              border: Border.all(
                  width: AppSize.s8,
                  color: ColorManager.secondaryColor,
                  strokeAlign: BorderSide.strokeAlignOutside),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: image != null
                  ? Image(
                      image: FileImage(image!),
                      fit: BoxFit.cover,
                    )
                  : Image.asset(AssetManager.profileIcon),
            )),
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
