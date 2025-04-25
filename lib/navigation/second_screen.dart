import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:test_getx/navigation/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Column(
        spacing: 20,
        children: [
          TextButton(
            onPressed: () {
              Get.off(ThirdScreen());
            },
            child: Text('Remove Stack'),
          ),
          TextButton(
            onPressed: () {
              Get.offAll(ThirdScreen());
            },
            child: Text('Remove All Stack'),
          ),
          TextButton(
            onPressed: () async {
              final value = await Get.to(ThirdScreen());

              log(value);
            },
            child: Text('Get Data'),
          ),
          TextButton(
            onPressed: () {
              snackBar();
            },
            child: Text('Snack Bar'),
          ),
          TextButton(
            onPressed: () {
              dialog();
            },
            child: Text('Dialog'),
          ),
          TextButton(
            onPressed: () {
              bottomSheet();
            },
            child: Text('Bottom Sheet'),
          ),
        ],
      ),
    );
  }

  snackBar() {
    Get.snackbar(snackPosition: SnackPosition.BOTTOM, 'Hi', 'How are you?');
  }

  dialog() {
    Get.dialog(Dialog(child: Column(mainAxisSize: MainAxisSize.min, children: [Text('Hi'), Text('How are you?')])));
  }

  bottomSheet() {
    Get.bottomSheet(
      Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(mainAxisSize: MainAxisSize.min, children: [Text('Hi'), Text('How are you?')]),
      ),
    );
  }
}
