import 'package:get/get.dart';

class ApplyPromoCodeController extends GetxController {
  ApplyPromoCodeController();

  _initData() {
    update(["apply_promo_code"]);
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
