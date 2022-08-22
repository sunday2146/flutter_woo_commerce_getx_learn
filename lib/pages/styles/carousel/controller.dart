import 'package:get/get.dart';

class CarouselController extends GetxController {
  CarouselController();

  _initData() {
    update(["carousel"]);
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
