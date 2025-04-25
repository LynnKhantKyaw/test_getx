import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/translation/translation_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Column(
        spacing: 20,
        children: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text('Back'),
          ),
          TextButton(
            onPressed: () {
              Get.offAll(TranslationScreen());
            },
            child: Text('Go To Home'),
          ),
          TextButton(
            onPressed: () {
              Get.back(result: 'E sar');
            },
            child: Text('Give Data'),
          ),
        ],
      ),
    );
  }
}
