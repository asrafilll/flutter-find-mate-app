import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/common_widgets/people_love_card_widget.dart';
import 'package:flutter_saranghae/src/theme_manager/font_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/textstyle_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/values_manager.dart';

class PeopleLovedYouScreen extends StatelessWidget {
  static const String routeName = '/people-loved-you';
  const PeopleLovedYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'People You\nLoved',
          textAlign: TextAlign.center,
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semiBold,
            fontSize: FontSizeManager.f20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: AppSize.s30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (index, context) => const PeopleLoveCardWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
