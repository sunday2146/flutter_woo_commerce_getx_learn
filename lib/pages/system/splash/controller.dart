import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();

  // 第3步: 尝试手动触发更新
  // 加入点击更新 title 代码
  // lib/pages/system/splash/controller.dart
  String title = "";

  void onTap(int ticket) {
    title = "GetBuilder -> 点击了第 $ticket 个按钮";
    update(['splash_title1', 'splash_title2']);
  }

  _initData() {
    update(["splash"]);
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
