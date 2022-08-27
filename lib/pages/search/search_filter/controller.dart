import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class SearchFilterController extends GetxController {
  SearchFilterController();

  // 商品 tagId , 获取路由传递参数
  int? tagId = Get.arguments["tagId"] ?? "";

  // 商品列表
  List<ProductModel> items = [];

  // 刷新控制器
  final RefreshController refreshController = RefreshController(
    initialRefresh: true,
  );

  // 页码
  int _page = 1;

  // 页尺寸
  final int _limit = 20;

  // 排序字段
  // date, id, include, title, slug, price, popularity and rating. Default is date.
  final String _orderBy = "id";

  // 排序方向
  // asc and desc. Default is desc.
  final String _order = "desc";

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // 排序列表
  List<KeyValueModel> orderList = [
    KeyValueModel(key: "rating", value: "Best Match"),
    KeyValueModel(key: "price_low", value: "Price (low to high)"),
    KeyValueModel(key: "price_high", value: "Price (high to low)"),
    KeyValueModel(key: "popularity", value: "Popularity"),
    KeyValueModel(key: "date", value: "New publish"),
    KeyValueModel(key: "title", value: "Product name"),
    KeyValueModel(key: "slug", value: "Slug name"),
  ];

  // 排序选中
  KeyValueModel orderSelected =
      KeyValueModel(key: "rating", value: "Best Match");

  // 价格范围 0~1000
  final List<double> priceRange = [100, 1000];

  // 颜色列表
  List<KeyValueModel<AttributeModel>> colors = [];

  // 选中颜色列表
  List<String> colorKeys = [];

  // 尺寸列表
  List<KeyValueModel<AttributeModel>> sizes = [];

  // 选中尺寸列表
  List<String> sizeKeys = [];

  // 星级
  int starValue = -1;

  // Brand
  List<KeyValueModel<AttributeModel>> brands = [];
  List<String> brandKeys = [];

  // Gender
  List<KeyValueModel<AttributeModel>> genders = [];
  List<String> genderKeys = [];

  // Condition
  List<KeyValueModel<AttributeModel>> conditions = [];
  List<String> conditionKeys = [];

  ////////////////////////////////////////////////////////////////

  _initData() {
    update(["search_filter"]);
    _loadCache();
  }

  // 拉取数据
  // isRefresh 是否是刷新
  Future<bool> _loadSearch(bool isRefresh) async {
    // 拉取数据
    var result = await ProductApi.products(ProductsReq(
      // 刷新, 重置页数1
      page: isRefresh ? 1 : _page,
      // 每页条数
      prePage: _limit,
      // slug
      tag: "$tagId",
      // 排序字段
      orderby: _orderBy,
      // 排序方向
      order: _order,
      // 价格范围
      minPrice: "${priceRange[0]}",
      maxPrice: "${priceRange[1]}",
    ));

    // 下拉刷新
    if (isRefresh) {
      _page = 1; // 重置页数1
      items.clear(); // 清空数据
    }

    // 有数据
    if (result.isNotEmpty) {
      _page++; // 页数+1
      items.addAll(result); // 添加数据
      // 调试列表
      items.addAll(result);
      items.addAll(result);
      items.addAll(result);
      items.addAll(result);
      items.addAll(result);
      items.addAll(result);
    }

    // 是否空
    return result.isEmpty;
  }

  ////////////////////////////////////////////////////////////////

  // 读取缓存
  void _loadCache() async {
    // 尺寸列表
    {
      String result =
          Storage().getString(Constants.storageProductsAttributesSizes);
      sizes = jsonDecode(result).map<KeyValueModel<AttributeModel>>((item) {
        var arrt = AttributeModel.fromJson(item);
        return KeyValueModel(key: "${arrt.name}", value: arrt);
      }).toList();
    }

    // 颜色列表
    {
      String result =
          Storage().getString(Constants.storageProductsAttributesColors);
      colors = jsonDecode(result).map<KeyValueModel<AttributeModel>>((item) {
        var arrt = AttributeModel.fromJson(item);
        return KeyValueModel(key: "${arrt.name}", value: arrt);
      }).toList();
    }

    // 品牌列表
    {
      String result =
          Storage().getString(Constants.storageProductsAttributesBrand);
      brands = jsonDecode(result).map<KeyValueModel<AttributeModel>>((item) {
        var arrt = AttributeModel.fromJson(item);
        return KeyValueModel(key: "${arrt.name}", value: arrt);
      }).toList();
    }

    // 性别列表
    {
      String result =
          Storage().getString(Constants.storageProductsAttributesGender);
      genders = jsonDecode(result).map<KeyValueModel<AttributeModel>>((item) {
        var arrt = AttributeModel.fromJson(item);
        return KeyValueModel(key: "${arrt.name}", value: arrt);
      }).toList();
    }

    // 新旧列表
    {
      String result =
          Storage().getString(Constants.storageProductsAttributesCondition);
      conditions =
          jsonDecode(result).map<KeyValueModel<AttributeModel>>((item) {
        var arrt = AttributeModel.fromJson(item);
        return KeyValueModel(key: "${arrt.name}", value: arrt);
      }).toList();
    }
  }

  // 排序选中
  void onOrderTap(KeyValueModel? val) {
    orderSelected = val!;
    update(["search_filter"]);
  }

  // 筛选 打开
  void onFilterOpenTap() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  // 筛选 关闭
  void onFilterCloseTap() {
    Get.back();
  }

  // 价格区间拖动
  onPriceRangeDragging(
    int handlerIndex,
    dynamic lowerValue,
    dynamic upperValue,
  ) {
    priceRange[0] = lowerValue as double;
    priceRange[1] = upperValue as double;
    update(["filter_price_range"]);
  }

  // 尺寸选中
  void onSizeTap(List<String> keys) {
    sizeKeys = keys;
    update(["filter_sizes"]);
  }

  // 颜色选中
  void onColorTap(List<String> keys) {
    colorKeys = keys;
    update(["filter_colors"]);
  }

  // 星级选中
  void onStarTap(int value) {
    starValue = value;
    update(["filter_stars"]);
  }

  // 品牌选中
  void onBrandTap(List<String> keys) {
    brandKeys = keys;
    update(["filter_brands"]);
  }

  // 性别选中
  void onGenderTap(List<String> keys) {
    genderKeys = keys;
    update(["filter_genders"]);
  }

  // 新旧选中
  void onConditionTap(List<String> keys) {
    conditionKeys = keys;
    update(["filter_conditions"]);
  }

  // 上拉载入新商品
  void onLoading() async {
    if (items.isNotEmpty) {
      try {
        // 拉取数据是否为空
        var isEmpty = await _loadSearch(false);

        if (isEmpty) {
          // 设置无数据
          refreshController.loadNoData();
        } else {
          // 加载完成
          refreshController.loadComplete();
        }
      } catch (e) {
        // 加载失败
        refreshController.loadFailed();
      }
    } else {
      // 设置无数据
      refreshController.loadNoData();
    }
    update(["filter_products"]);
  }

  // 下拉刷新
  void onRefresh() async {
    try {
      await _loadSearch(true);
      // 刷新完成
      refreshController.refreshCompleted();
    } catch (error) {
      // 刷新失败
      refreshController.refreshFailed();
    }
    update(["filter_products"]);
  }

  // 筛选 应用
  void onFilterApplyTap() {
    refreshController.requestRefresh();
    Get.back();
  }

  ////////////////////////////////////////////////////////////////

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
    // 刷新控制器释放
    refreshController.dispose();
  }
}
