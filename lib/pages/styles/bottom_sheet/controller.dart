import 'package:get/get.dart';

class BottomSheetController extends GetxController {
  BottomSheetController();

  _initData() {
    update(["bottom_sheet"]);
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
