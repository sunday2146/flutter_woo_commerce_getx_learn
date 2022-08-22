import 'package:get/get.dart';

class TextFormController extends GetxController {
  TextFormController();

  _initData() {
    update(["text_form"]);
  }

  void onTap() {}

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
