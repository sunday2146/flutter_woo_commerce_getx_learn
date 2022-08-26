import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  // 导航栏
  AppBar _buildAppBar() {
    return AppBar();
  }

  // 轮播广告
  Widget _buildBanner() {
    return Container().sliverToBoxAdapter().sliverPaddingHorizontal(AppSpace.page);
  }

  // 分类导航
  Widget _buildCategories() {
    return Container().sliverToBoxAdapter().sliverPaddingHorizontal(AppSpace.page);
  }

  // Flash Sell
  Widget _buildFlashSell() {
    return Container().sliverToBoxAdapter().sliverPaddingHorizontal(AppSpace.page);
  }

  // New Sell
  Widget _buildNewSell() {
    return Container().sliverToBoxAdapter().sliverPaddingHorizontal(AppSpace.page);
  }

  // 主视图
  Widget _buildView() {
    return CustomScrollView(
      slivers: [
        // 轮播广告
        _buildBanner(),

        // 分类导航
        _buildCategories(),

        // Flash Sell
        // title
        Text(LocaleKeys.gHomeFlashSell.tr)
            .sliverToBoxAdapter()
            .sliverPaddingHorizontal(AppSpace.page),

        // list
        _buildFlashSell(),

        // new product
        // title
        Text(LocaleKeys.gHomeNewProduct.tr)
            .sliverToBoxAdapter()
            .sliverPaddingHorizontal(AppSpace.page),

        // list
        _buildNewSell(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      // init: HomeController(),
      init: Get.find<HomeController>(),
      id: "home",
      builder: (_) {
        return Scaffold(
          appBar: _buildAppBar(),
          body: _buildView(),
        );
      },
    );
  }
}
