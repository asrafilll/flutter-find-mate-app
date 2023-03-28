import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class MatchButtonWidget extends StatelessWidget {
  const MatchButtonWidget({
    super.key,
    this.dimension = AppSize.s50,
    required this.image,
    required this.onPressed,
  });

  final double dimension;
  final String image;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: dimension,
        height: dimension,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
