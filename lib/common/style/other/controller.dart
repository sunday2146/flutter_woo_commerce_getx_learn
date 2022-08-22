import 'package:get/get.dart';

class OtherController extends GetxController {
  OtherController();

  _initData() {
    update(["other"]);
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
