import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/features/authentication/presentation/sign_up_age_job_screen.dart';
import 'package:flutter_saranghae/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:flutter_saranghae/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:flutter_saranghae/src/theme_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationThemeData(),
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpAgeJobScreen.routeName: (context) => const SignUpAgeJobScreen(),
        SignUpUploadPhotoScreen.routeName: (context) =>
            const SignUpUploadPhotoScreen(),
      },
    );
  }
}
