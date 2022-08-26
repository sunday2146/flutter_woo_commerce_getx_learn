import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController with GetSingleTickerProviderStateMixin {
  ProductDetailsController();

  // 商品 id , 获取路由传递参数
  int? productId = Get.arguments['id'] ?? 0;

  // 商品详情
  ProductModel? product;

  // Banner 数据
  List<KeyValueModel> bannerItems = [];

  // Banner 当前位置
  int bannerCurrentIndex = 0;

  // tab 控制器
  late TabController tabController;

  // tab 控制器
  int tabIndex = 0;

  // 拉取商品详情
  _loadProduct() async {
    // 商品详情
    product = await ProductApi.productDetail(productId);

    // Banner 数据
    if (product?.images != null) {
      bannerItems = product!.images!
          .map<KeyValueModel>((e) => KeyValueModel(
                key: "${e.id}",
                value: e.src ?? "",
              ))
          .toList();
    }
  }

  _initData() async {
    await _loadProduct();

    // 初始化 tab 控制器
    tabController = TabController(length: 3, vsync: this);

    update(["product_details"]);
  }

  // Banner 切换事件
  void onChangeBanner(int index, _reason) {
    bannerCurrentIndex = index;
    update(["product_banner"]); // 手动刷新 Banner
  }

  // 图片浏览
  void onGalleryTap(int index, KeyValueModel item) {
    Get.to(GalleryWidget(
      initialIndex: index,
      items: bannerItems.map<String>((e) => e.value!).toList(),
    ));
  }

  // 切换 tab
  void onTapBarTap(int index) {
    tabIndex = index;
    tabController.animateTo(index);
    update(["product_tab"]);
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

  @override
  void onClose() {
    super.onClose();
    tabController.dispose();
  }
}
