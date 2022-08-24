import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_woo_commerce_getx_learn/pages/system/login_quick/index.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    update(["splash"]);
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

    FlutterNativeSplash.remove(); // 删除设备启动图，解决 Flutter App 启动开头的白屏问题

    // 延时 3 秒跳转到
    Future.delayed(Duration(seconds: 3), () {
      Get.to(const LoginQuickPage());
    });
  }

// @override
// void onClose() {
//   super.onClose();
// }
}
