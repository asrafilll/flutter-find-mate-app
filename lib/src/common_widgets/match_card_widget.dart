import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/glass_card_widget.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/color_manager.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                AssetManager.peopleLove1Img,
              ),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: ColorManager.secondaryColor,
              width: 11.0,
            ),
            borderRadius: BorderRadius.circular(70),
          ),
        ),
        const GlassCardWidget(),
      ],
    );
  }
}
