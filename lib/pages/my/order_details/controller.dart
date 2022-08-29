import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class OrderDetailsController extends GetxController {
  OrderDetailsController();

  // 订单详情
  final OrderModel order = Get.arguments as OrderModel;

  _initData() {
    update(["order_details"]);
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
