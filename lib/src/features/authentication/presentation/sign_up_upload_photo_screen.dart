import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_button_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_text_button_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/upload_photo_widget.dart';
import 'package:flutter_saranghae/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';
import 'package:flutter_saranghae/src/utils/image_picker_utils.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  File? image;

  void getImageProfile(GetImageFrom source) async {
    final result = await ImagePickerUtil.getImage(source);
    if (result != null) {
      setState(() {
        image = File(result.path);
      });
    }
  }

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
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(AppPadding.p32),
                        margin: const EdgeInsets.only(bottom: 32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {
                                getImageProfile(GetImageFrom.camera);
                              },
                              icon: const Icon(
                                Icons.camera,
                                size: 48.0,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                getImageProfile(GetImageFrom.gallery);
                              },
                              icon: const Icon(
                                Icons.photo,
                                size: 48.0,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: UploadPhotoWidget(
                  image: image,
                ),
              ),
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
