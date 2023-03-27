import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';
import 'package:flutter_saranghae/src/theme_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getApplicationThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Saranghae App"),
        ),
        body: Center(
          child: Image.asset(AssetManager.heroImg),
        ),
      ),
    );
  }
}
