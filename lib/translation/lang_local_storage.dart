import 'package:get_storage_pro/get_storage_pro.dart';

class LangLocalStorage {
  Future<void> saveLanguage(bool isEn) async {
    await GetStorage().write('lang', isEn);
  }

  Future<bool?> get getLanguage async {
    return GetStorage().read('lang');
  }
}
