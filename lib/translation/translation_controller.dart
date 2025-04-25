import 'package:get/get.dart';
import 'package:test_getx/translation/en.dart';
import 'package:test_getx/translation/my.dart';

class TranslationController extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {'en': en, 'my': my};
}
