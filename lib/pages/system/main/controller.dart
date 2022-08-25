import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  MainController();

  _initData() {
    update(["main"]);
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

    Get.toNamed(RouteNames.systemRegister);
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
