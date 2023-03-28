import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.symmetric(
        vertical: AppMargin.m24,
        horizontal: AppMargin.m30,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p24,
        vertical: AppPadding.p12,
      ),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            AssetManager.glassCardImg,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          AppSize.s50,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sabrina Anho',
                style: getWhiteTextStyle(
                  fontSize: AppSize.s20,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              Text(
                '20, Traveler',
                style: getWhiteTextStyle(),
              ),
            ],
          ),
          Container(
            width: AppSize.s50,
            height: AppSize.s50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AssetManager.iconProfile,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
