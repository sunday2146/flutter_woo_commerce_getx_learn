import 'package:get/get.dart';

class LoginQuickController extends GetxController {
  LoginQuickController();

  _initData() {
    update(["login_quick"]);
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
