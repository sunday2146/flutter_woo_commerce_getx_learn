import 'dart:convert';

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

  // 颜色列表
  List<KeyValueModel<AttributeModel>> colors = [];

  // 选中颜色列表
  List<String> colorKeys = [];

  // 尺寸列表
  List<KeyValueModel<AttributeModel>> sizes = [];

  // 选中尺寸列表
  List<String> sizeKeys = [];

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

    // 选中值
    if (product?.attributes != null) {
      // 颜色
      var colorAttr = product?.attributes?.where((e) => e.name == "Color");
      if (colorAttr?.isNotEmpty == true) {
        colorKeys = colorAttr?.first.options ?? [];
      }
      // 尺寸
      var sizeAttr = product?.attributes?.where((e) => e.name == "Size");
      if (sizeAttr?.isNotEmpty == true) {
        sizeKeys = sizeAttr?.first.options ?? [];
      }
    }
  }

  // 读取缓存
  _loadCache() async {
    // 颜色列表
    var stringColors = Storage().getString(Constants.storageProductsAttributesColors);

    // 尺寸列表
    var stringSizes = Storage().getString(Constants.storageProductsAttributesSizes);

    colors = stringColors != ""
        ? jsonDecode(stringColors).map<KeyValueModel<AttributeModel>>((item) {
            var arrt = AttributeModel.fromJson(item);
            return KeyValueModel(key: "${arrt.name}", value: arrt);
          }).toList()
        : [];

    sizes = stringSizes != ""
        ? jsonDecode(stringSizes).map<KeyValueModel<AttributeModel>>((item) {
            var arrt = AttributeModel.fromJson(item);
            return KeyValueModel(key: "${arrt.name}", value: arrt);
          }).toList()
        : [];
  }

  _initData() async {
    await _loadProduct();

    // 初始化 tab 控制器
    tabController = TabController(length: 3, vsync: this);

    // 读取缓存
    await _loadCache();

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

  // 颜色选中
  void onColorTap(List<String> keys) {
    colorKeys = keys;
    update(["product_colors"]);
  }

  // 尺寸选中
  void onSizeTap(List<String> keys) {
    sizeKeys = keys;
    update(["product_sizes"]);
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
