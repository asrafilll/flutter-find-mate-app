import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/match_button_widget.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';

class ExploreMatchButton extends StatelessWidget {
  const ExploreMatchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MatchButtonWidget(
          image: AssetManager.closeIcon,
          onPressed: () {},
        ),
        MatchButtonWidget(
          dimension: 80,
          image: AssetManager.loveIcon,
          onPressed: () {},
        ),
        MatchButtonWidget(
          image: AssetManager.favoriteIcon,
          onPressed: () {},
        ),
      ],
    );
  }
}
