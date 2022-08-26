import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController();

  _initData() {
    update(["home"]);
  }

  // 导航点击事件
  void onAppBarTap() {}

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
