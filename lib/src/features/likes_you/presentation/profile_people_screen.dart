import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/people_hero_image.dart';
import 'package:flutter_saranghae/src/common_widgets/people_identity_widget.dart';

class ProfilePeopleScreen extends StatelessWidget {
  static const String routeName = '/profile-people-screen';
  const ProfilePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            PeopleHeroImage(),
            PeopleIdentityWidget(),
          ],
        ),
      ),
    );
  }
}
