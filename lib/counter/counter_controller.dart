import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  increase() {
    counter++;

    update();
  }
}
