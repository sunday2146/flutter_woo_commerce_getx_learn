import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormController extends GetxController {
  TextFormController();

  GlobalKey formKey = GlobalKey<FormState>();

  TextEditingController unameController =
      TextEditingController(text: "ducafecat");
  TextEditingController pwdController = TextEditingController(text: "123456");

  _initData() {
    update(["text_form"]);
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
    unameController.dispose();
    pwdController.dispose();
  }
}
