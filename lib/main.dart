import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hitachi_test/screen/introSlider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FantomCarpentory',
      home: GetStarted(),
    );
  }
}
