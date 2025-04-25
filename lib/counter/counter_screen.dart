import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_getx/counter/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final value = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen')),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text(value.counter.toString())),
            // GetBuilder<CounterController>(
            //   init: CounterController(),
            //   builder: (value) {
            //     return Text(value.counter.toString());
            //   },
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          value.increase();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
