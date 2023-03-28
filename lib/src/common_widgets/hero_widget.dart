import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 215.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
            image: AssetImage(
              AssetManager.heroImg,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
