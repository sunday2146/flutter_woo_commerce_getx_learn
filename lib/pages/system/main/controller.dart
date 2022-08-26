import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  MainController();

  // 分页管理
  final PageController pageController = PageController();

  // 当前的 tab index
  int currentIndex = 0;

  // 导航栏切换
  void onIndexChanged(int index) {
    currentIndex = index;
    update(['navigation']);
  }

  // 切换页面
  void onJumpToPage(int page) {
    pageController.jumpToPage(page);
  }

  _initData() async {
    // 读取用户 profile
    await UserService.to.getProfile();

    // 测试用
    // Get.toNamed(RouteNames.systemLogin);

    update(["main"]);
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

    // Get.toNamed(RouteNames.systemRegister);
  }

  @override
  void onClose() {
    super.onClose();
    // 释放页控制器
    pageController.dispose();
  }
}
