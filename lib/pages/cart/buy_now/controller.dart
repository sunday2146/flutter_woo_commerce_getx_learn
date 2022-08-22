import 'package:get/get.dart';

class BuyNowController extends GetxController {
  BuyNowController();

  _initData() {
    update(["buy_now"]);
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
