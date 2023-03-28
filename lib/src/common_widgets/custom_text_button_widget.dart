import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget(
      {super.key, required this.onPressed, required this.title});

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: getBlack60TextStyle().copyWith(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
