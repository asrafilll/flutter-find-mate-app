import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/color_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.labelName,
    required this.hintText,
    required this.controller,
    this.isObscure = false,
  });

  final String labelName;
  final String hintText;
  final bool isObscure;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextStyle(),
        ),
        const SizedBox(height: AppSize.s8),
        TextField(
          controller: controller,
          obscureText: isObscure,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppPadding.p15,
              horizontal: AppPadding.p30,
            ),
            filled: true,
            hintText: hintText,
            hintStyle: getBlackTextStyle(),
            fillColor: ColorManager.secondaryColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                AppSize.s50,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.s14,
        ),
      ],
    );
  }
}
