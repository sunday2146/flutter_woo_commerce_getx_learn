import 'package:get/get.dart';

class RegisterPinController extends GetxController {
  RegisterPinController();

  _initData() {
    update(["register_pin"]);
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
