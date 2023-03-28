import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/logo_widget.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class ExplorePeopleAppbarWidget extends StatelessWidget {
  const ExplorePeopleAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: AppSize.s55,
          height: AppSize.s55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AssetManager.userImg,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const LogoWidget(),
        Container(
          width: AppSize.s24,
          height: AppSize.s24,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AssetManager.notificationIcon,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
