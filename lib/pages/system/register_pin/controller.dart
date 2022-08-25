import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/i18n/index.dart';
import 'package:get/get.dart';

class RegisterPinController extends GetxController {
  RegisterPinController();

  // 验证 pin
  String? pinValidator(val) {
    return val == '111111' ? null : LocaleKeys.commonMessageIncorrect.trParams({"method": "Pin"});
  }

  // ping 文字输入控制器
  TextEditingController pinController = TextEditingController();

  // 表单 key
  GlobalKey formKey = GlobalKey<FormState>();

  _initData() {
    update(["register_pin"]);
  }

  // pin 触发提交
  void onPinSubmit(String val) {
    debugPrint("onPinSubmit: $val");
  }

  // 按钮提交
  void onBtnSubmit() {}

  // 按钮返回
  void onBtnBackup() {
    Get.back();
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

  @override
  void onClose() {
    super.onClose();
    pinController.dispose();
  }
}
