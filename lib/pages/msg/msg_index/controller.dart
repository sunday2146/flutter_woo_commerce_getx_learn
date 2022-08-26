import 'package:get/get.dart';

class MsgIndexController extends GetxController {
  MsgIndexController();

  _initData() {
    update(["msg_index"]);
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
