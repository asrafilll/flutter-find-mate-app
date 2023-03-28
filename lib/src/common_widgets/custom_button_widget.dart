import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: AppSize.s55,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0XFFEA887B),
              Color(0XFFCE92E3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(
            AppSize.s50,
          ),
        ),
        child: Text(
          title,
          style: getWhiteTextStyle(
            fontSize: AppSize.s16,
            fontWeight: FontWeightManager.semiBold,
          ),
        ),
      ),
    );
  }
}
