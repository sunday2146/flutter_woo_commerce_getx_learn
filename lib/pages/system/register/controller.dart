import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RegisterController();

  GlobalKey formKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController(text: "ducafecat5"); // 用户名
  TextEditingController emailController = TextEditingController(text: "ducafecat5@gmail.com"); // 邮件
  TextEditingController firstNameController = TextEditingController(text: "ducafe"); // 姓
  TextEditingController lastNameController = TextEditingController(text: "cat"); // 名
  TextEditingController passwordController = TextEditingController(text: "12345678"); // 密码

  _initData() {
    update(["register"]);
  }

  void onTap() {}

  // 注册
  void onSignUp() {
    if ((formKey.currentState as FormState).validate()) {
      // aes 加密密码
      var password = EncryptUtil().aesEncode(passwordController.text);

      //验证通过
      Get.offNamed(
        RouteNames.systemRegisterPin,
        arguments: UserRegisterReq(
          username: userNameController.text,
          email: emailController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          password: password,
        ),
      );
    }
  }

  // 登录
  void onSignIn() {
    Get.offNamed(RouteNames.systemLogin);
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

  // 释放
  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    passwordController.dispose();
  }
}
