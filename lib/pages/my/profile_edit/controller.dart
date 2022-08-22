import 'package:get/get.dart';

class ProfileEditController extends GetxController {
  ProfileEditController();

  _initData() {
    update(["profile_edit"]);
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
