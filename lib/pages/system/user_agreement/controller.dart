import 'package:get/get.dart';

class UserAgreementController extends GetxController {
  UserAgreementController();

  _initData() {
    update(["user_agreement"]);
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
