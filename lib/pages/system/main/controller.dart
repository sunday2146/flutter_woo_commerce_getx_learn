import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  MainController();

  _initData() async {
    // 读取用户 profile
    await UserService.to.getProfile();

    // 测试用
    Get.toNamed(RouteNames.systemLogin);

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
