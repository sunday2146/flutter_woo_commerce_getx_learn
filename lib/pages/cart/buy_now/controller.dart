import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class BuyNowController extends GetxController {
  BuyNowController(this.product);

  // 支付方式图标
  List<String> paymentList = [
    AssetsImages.pVisaPng,
    AssetsImages.pCashPng,
    AssetsImages.pMastercardPng,
    AssetsImages.pPaypalPng,
  ];

  // 商品详情
  final ProductModel product;

  _initData() {
    update(["buy_now"]);
  }

  // 下单 checkout
  void onCheckout() async {}

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
