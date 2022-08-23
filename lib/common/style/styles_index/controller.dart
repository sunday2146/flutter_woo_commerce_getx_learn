import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class StylesIndexController extends GetxController {
  StylesIndexController();

  _initData() {
    update(["styles_index"]);
  }

  void onTap() {}

  // 多语言
  onLanguageSelected() {
    var en = Translation.supportedLocales[0];
    var zh = Translation.supportedLocales[1];

    ConfigService.to
        .onLocaleUpdate(ConfigService.to.locale.toLanguageTag() == en.toLanguageTag() ? zh : en);
    update(["styles_index"]);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

// @override
// void onClose() {
//   super.onClose();
// }
}
