import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_button_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_text_button_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/upload_photo_widget.dart';
import 'package:flutter_saranghae/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class SignUpUploadPhotoScreen extends StatelessWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p50,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LogoAndTaglineWidget(),
              const SizedBox(height: AppSize.s50),
              const UploadPhotoWidget(),
              const SizedBox(height: 53.0),
              Text(
                'Andi Mania',
                style: getWhiteTextStyle(
                  fontSize: AppSize.s22,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              const SizedBox(height: AppSize.s4),
              Text(
                '22, Lawyer',
                style: getBlack60TextStyle(),
              ),
              const SizedBox(height: 240.0),
              CustomButtonWidget(
                title: 'Update My Profile',
                onPressed: () {
                  Navigator.pushNamed(context, ExplorePeopleScreen.routeName);
                },
              ),
              const SizedBox(height: 20),
              CustomTextButtonWidget(
                onPressed: () {},
                title: 'Skip for Now',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
