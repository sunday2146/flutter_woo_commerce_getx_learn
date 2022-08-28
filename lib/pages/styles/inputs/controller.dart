import 'package:get/get.dart';

class InputsController extends GetxController {
  InputsController();

  bool checkVal = true;

  _initData() {
    update(["inputs"]);
  }

  void onCheckBox(bool val) {
    checkVal = val;
    update(["inputs"]);
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

// @override
// void onClose() {
//   super.onClose();
// }
}
