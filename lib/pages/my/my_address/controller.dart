import 'package:get/get.dart';

class MyAddressController extends GetxController {
  MyAddressController();

  _initData() {
    update(["my_address"]);
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
