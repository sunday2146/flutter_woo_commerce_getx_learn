import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import '../index.dart';

class FilterView extends GetView<SearchFilterController> {
  const FilterView({Key? key}) : super(key: key);

  // 标题栏
  Widget _buildTitle(String title) {
    return TextWidget.body2(title).paddingBottom(AppSpace.listRow);
  }

  // 价格选择区间
  Widget _buildPriceRange() {
    return GetBuilder<SearchFilterController>(
      id: "filter_price_range",
      builder: (_) {
        return PriceRangeWidget(
          max: 5000,
          min: 0,
          values: controller.priceRange,
          onDragging: controller.onPriceRangeDragging,
        ).paddingBottom(AppSpace.listRow * 2);
      },
    );
  }

  // 尺寸选择
  Widget _buildSizes() {
    return GetBuilder<SearchFilterController>(
      id: "filter_sizes",
      builder: (_) {
        return TagsListWidget(
          onTap: controller.onSizeTap,
          itemList: controller.sizes,
          keys: controller.sizeKeys,
          bgSelectedColor: AppColors.highlight,
          textSelectedColor: AppColors.onPrimary,
          isCircular: true,
          size: 24,
          textSize: 9,
          textWeight: FontWeight.w400,
        ).paddingBottom(AppSpace.listRow * 2);
      },
    );
  }

  // 颜色选择
  Widget _buildColors() {
    return GetBuilder<SearchFilterController>(
      id: "filter_colors",
      builder: (_) {
        return ColorsListWidget(
          onTap: controller.onColorTap,
          itemList: controller.colors,
          keys: controller.colorKeys,
          size: 24,
        ).paddingBottom(AppSpace.listRow * 2);
      },
    );
  }

  Widget _buildView() {
    return <Widget>[
      // 顶部
      _buildTopBar(),

      // 价格
      _buildTitle(LocaleKeys.searchFilterPrice.tr),
      _buildPriceRange(),

      // 尺寸
      _buildTitle(LocaleKeys.searchFilterSize.tr),
      _buildSizes(),

      // 颜色
      _buildTitle(LocaleKeys.searchFilterColor.tr),
      _buildColors(),

      // end
    ]
        .toColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
        )
        .paddingHorizontal(AppSpace.page);
  }

  // 顶部 关闭
  Widget _buildTopBar() {
    return <Widget>[
      // 文字
      TextWidget.title3(LocaleKeys.searchFilter.tr),

      // 关闭按钮
      ButtonWidget.icon(
        IconWidget.icon(
          Icons.close,
          size: 15,
          color: AppColors.secondary,
        ),
        onTap: controller.onFilterCloseTap,
      )
    ]
        .toRow(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        )
        .paddingBottom(AppSpace.listRow);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchFilterController>(
      id: "filter_view",
      builder: (_) {
        return _buildView();
      },
    );
  }
}
