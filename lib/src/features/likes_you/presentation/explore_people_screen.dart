import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/explore_match_button.dart';
import 'package:flutter_saranghae/src/common_widgets/explore_people_appbar_widget.dart';
import 'package:flutter_saranghae/src/common_widgets/match_card_widget.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class ExplorePeopleScreen extends StatelessWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p40,
          horizontal: AppPadding.p24,
        ),
        child: Column(
          children: [
            const ExplorePeopleAppbarWidget(),
            const SizedBox(height: AppSize.s50),
            Expanded(
              child: Column(
                children: const [
                  Expanded(
                    child: MatchCardWidget(),
                  ),
                  SizedBox(height: AppSize.s50),
                  ExploreMatchButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
