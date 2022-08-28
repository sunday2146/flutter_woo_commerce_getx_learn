import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplyPromoCodeController extends GetxController {
  ApplyPromoCodeController();

  // 优惠券控制器
  TextEditingController couponController = TextEditingController();

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

  @override
  void onClose() {
    super.onClose();
    couponController.dispose();
  }
}
