import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:test_getx/translation/app_language_controller.dart';

class TranslationScreen extends StatefulWidget {
  const TranslationScreen({super.key});

  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

class _TranslationScreenState extends State<TranslationScreen> {
  bool isEn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Translation')),
      body: Column(
        spacing: 10,
        children: [
          Text('login'.tr),
          Text('sign_up'.tr),
          GetBuilder<AppLanguageController>(
            init: AppLanguageController(),
            builder: (controller) {
              return Switch(
                value: controller.appLocal,
                onChanged: (value) async {
                  

                  await controller.changeLanguage(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
