import 'package:get/get.dart';

class SearchFilterController extends GetxController {
  SearchFilterController();

  _initData() {
    update(["search_filter"]);
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
