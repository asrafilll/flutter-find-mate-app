import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/banner_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_button_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_text_field.dart';
import 'package:flutter_saranghae/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = '/sign-up-age-job';
  const SignUpAgeJobScreen({super.key});

  @override
  State<SignUpAgeJobScreen> createState() => _SignUpAgeJobScreenState();
}

class _SignUpAgeJobScreenState extends State<SignUpAgeJobScreen> {
  final jobController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void dispose() {
    jobController.dispose();
    ageController.dispose();
    super.dispose();
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
              const BannerWidget(),
              CustomTextFieldWidget(
                labelName: 'Occupation',
                hintText: 'Write your occupation',
                controller: jobController,
              ),
              CustomTextFieldWidget(
                labelName: 'Age',
                hintText: 'Write your age',
                controller: ageController,
              ),
              const SizedBox(height: 131.0),
              CustomButtonWidget(
                title: 'Continue Sign Up',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    SignUpUploadPhotoScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
