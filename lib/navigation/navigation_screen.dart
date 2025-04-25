import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/navigation/second_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation Screen')),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Get.to(SecondScreen());
            },
            child: Text('Push Page'),
          ),
        ],
      ),
    );
  }
}
