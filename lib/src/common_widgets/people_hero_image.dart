import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/match_button_widget.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class PeopleHeroImage extends StatelessWidget {
  const PeopleHeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 520.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AssetManager.peopleLove1Img,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p24,
            vertical: AppPadding.p50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchButtonWidget(
                dimension: AppSize.s20,
                image: AssetManager.arrowLeftIcon,
                onPressed: () {},
              ),
              Text(
                'Lover Profile\nDetails',
                textAlign: TextAlign.center,
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f20,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              MatchButtonWidget(
                dimension: AppSize.s20,
                image: AssetManager.closeCircleIcon,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
