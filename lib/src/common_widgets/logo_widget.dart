import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143.0,
      height: AppSize.s36,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AssetManager.logoImg,
          ),
        ),
      ),
    );
  }
}
