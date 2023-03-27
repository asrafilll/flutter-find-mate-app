import 'package:flutter/material.dart';
import 'package:flutter_saranghae/src/theme_manager/asset_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
