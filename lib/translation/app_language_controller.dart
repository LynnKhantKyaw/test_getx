import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_getx/translation/lang_local_storage.dart';

class AppLanguageController extends GetxController {
  var appLocal = true;
  @override
  Future onInit() async {
    final localStorage = LangLocalStorage();

    appLocal = await localStorage.getLanguage ?? true;
    Get.updateLocale(Locale(appLocal == true ? 'en' : 'my'));
    update();

    super.onInit();
  }

  Future<void> changeLanguage(bool isEn) async {
    final localStorage = LangLocalStorage();

    await localStorage.saveLanguage(isEn);

    appLocal = isEn;
    //test
    Get.updateLocale(Locale(appLocal == true ? 'en' : 'my'));

    update();
  }
}
