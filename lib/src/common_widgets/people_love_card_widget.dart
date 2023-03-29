import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/features/likes_you/presentation/profile_people_screen.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/color_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class PeopleLoveCardWidget extends StatelessWidget {
  const PeopleLoveCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProfilePeopleScreen.routeName,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Container(
          margin: const EdgeInsets.only(
            bottom: AppMargin.m18,
          ),
          decoration: BoxDecoration(
            color: ColorManager.secondaryColor,
            borderRadius: BorderRadius.circular(
              AppSize.s20,
            ),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(AppPadding.p10),
            leading: Container(
              width: 70.0,
              height: 70.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AssetManager.peopleLove3Img,
                  ),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
            title: Text(
              'Ismiranda',
              style: getWhiteTextStyle(
                fontSize: FontSizeManager.f20,
                fontWeight: FontWeightManager.semiBold,
              ),
            ),
            subtitle: Text(
              '24, Doctor',
              style: getBlack30TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
