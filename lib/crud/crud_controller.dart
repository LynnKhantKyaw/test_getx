import 'package:get/get.dart';
import 'package:test_getx/crud/crud_repository.dart';

class CrudController extends GetxController {
  var isLoading = false.obs;
  var list = <String>[].obs;

  @override
  Future<void> onInit() async {
    await fetch();
    super.onInit();
  }

  Future<void> fetch() async {
    isLoading.value = true;
    try {
      final repo = CrudRepository();

      list.value = await repo.getList();

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }

    update();
  }
}
