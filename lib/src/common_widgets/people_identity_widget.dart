import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_button_widget.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class PeopleIdentityWidget extends StatelessWidget {
  const PeopleIdentityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p30,
        horizontal: AppPadding.p24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna',
            style: getWhiteTextStyle(
              fontSize: FontSizeManager.f28,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          Text(
            '22, Lawyer',
            style: getBlack60TextStyle(
              fontSize: FontSizeManager.f16,
            ),
          ),
          const SizedBox(height: AppSize.s16),
          Text(
            'I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.',
            style: getWhiteTextStyle(),
          ),
          Container(
            height: 90.0,
            margin: const EdgeInsets.only(
                bottom: AppMargin.m40, top: AppMargin.m16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => Container(
                width: 120.0,
                height: 80.0,
                margin: const EdgeInsets.only(right: AppMargin.m16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s18),
                  image: const DecorationImage(
                    image: AssetImage(
                      AssetManager.hobby1Img,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          CustomButtonWidget(
            title: 'Chat Now',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
