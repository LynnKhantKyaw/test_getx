import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_getx/crud/crud_controller.dart';

class CrudScreen extends StatelessWidget {
  CrudScreen({super.key});

  final CrudController controller = Get.put(CrudController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CRUD Screen')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.separated(
          itemBuilder: (context, index) {
            final item = controller.list[index];

            return Text(item);
          },
          separatorBuilder: (context, _) => SizedBox(height: 10),
          itemCount: controller.list.length,
        );
      }),
    );
  }
}
