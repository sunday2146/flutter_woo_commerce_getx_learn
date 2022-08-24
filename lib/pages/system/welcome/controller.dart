import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();

  List<WelcomeModel>? items; // 滚动集合
  int currentIndex = 0; // 当前项
  bool isShowStart = false; // 是否显示 Start
  CarouselController carouselController = CarouselController(); // slider 控制器

  // 当前位置发生改变
  void onPageChanged(int index) {
    currentIndex = index;
    isShowStart = currentIndex == 2;
    update(['slider', 'bar']);
  }

  // 去首页
  void onToMain() {
    Get.offAllNamed(RouteNames.systemMain);
  }

  // 下一页
  void onNext() {
    carouselController.nextPage();
  }

  _initData() {
    items = [
      WelcomeModel(
        image: AssetsImages.welcome_1Png,
        title: LocaleKeys.welcomeOneTitle.tr,
        desc: LocaleKeys.welcomeOneDesc.tr,
      ),
      WelcomeModel(
        image: AssetsImages.welcome_2Png,
        title: LocaleKeys.welcomeTwoTitle.tr,
        desc: LocaleKeys.welcomeTwoDesc.tr,
      ),
      WelcomeModel(
        image: AssetsImages.welcome_3Png,
        title: LocaleKeys.welcomeThreeTitle.tr,
        desc: LocaleKeys.welcomeThreeDesc.tr,
      ),
    ];

    update(["welcome"]);
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
    // 设置已打开
    ConfigService().setAlreadyOpen();
  }

// @override
// void onClose() {
//   super.onClose();
// }
}
