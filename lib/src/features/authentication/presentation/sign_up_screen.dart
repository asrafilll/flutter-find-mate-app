import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/banner_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_button_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_text_button_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/custom_text_field.dart';
import 'package:flutter_saranghae/src/features/authentication/presentation/sign_up_age_job_screen.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String routeName = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
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
                labelName: 'Complete Name',
                hintText: 'Write your name',
                controller: nameController,
              ),
              CustomTextFieldWidget(
                labelName: 'Email Address',
                hintText: 'Write your mail address',
                controller: nameController,
              ),
              CustomTextFieldWidget(
                labelName: 'Password',
                hintText: 'Write your security',
                controller: nameController,
                isObscure: true,
              ),
              const SizedBox(height: AppSize.s16),
              CustomButtonWidget(
                title: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    SignUpAgeJobScreen.routeName,
                  );
                },
              ),
              const SizedBox(height: AppSize.s20),
              CustomTextButtonWidget(
                title: 'Sign In with My Account',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
