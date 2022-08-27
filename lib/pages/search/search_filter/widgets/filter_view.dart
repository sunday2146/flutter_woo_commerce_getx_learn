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

  // 评级选择
  Widget _buildStars() {
    return GetBuilder<SearchFilterController>(
      id: "filter_stars",
      builder: (_) {
        return StarsListWidget(
          value: controller.starValue,
          onTap: controller.onStarTap,
          selectedColor: AppColors.highlight,
          size: 18,
        ).paddingBottom(AppSpace.listRow * 2);
      },
    );
  }

  // 品牌选择
  Widget _buildBrands() {
    return GetBuilder<SearchFilterController>(
      id: "filter_brands",
      builder: (_) {
        return TagsListWidget(
          onTap: controller.onBrandTap,
          itemList: controller.brands,
          keys: controller.brandKeys,
          bgSelectedColor: AppColors.highlight,
          textSelectedColor: AppColors.onPrimary,
          borderRadius: 11,
          height: 17,
          width: 55,
          textSize: 9,
          textWeight: FontWeight.w400,
        ).paddingBottom(AppSpace.listRow * 2);
      },
    );
  }

  // 性别选择
  Widget _buildGenders() {
    return GetBuilder<SearchFilterController>(
      id: "filter_genders",
      builder: (_) {
        return TagsListWidget(
          onTap: controller.onGenderTap,
          itemList: controller.genders,
          keys: controller.genderKeys,
          bgSelectedColor: AppColors.highlight,
          textSelectedColor: AppColors.onPrimary,
          borderRadius: 11,
          height: 17,
          width: 55,
          textSize: 9,
          textWeight: FontWeight.w400,
        ).paddingBottom(AppSpace.listRow * 2);
      },
    );
  }

  // 新旧选择
  Widget _buildConditions() {
    return GetBuilder<SearchFilterController>(
      id: "filter_conditions",
      builder: (_) {
        return TagsListWidget(
          onTap: controller.onConditionTap,
          itemList: controller.conditions,
          keys: controller.conditionKeys,
          bgSelectedColor: AppColors.highlight,
          textSelectedColor: AppColors.onPrimary,
          borderRadius: 11,
          height: 17,
          width: 55,
          textSize: 9,
          textWeight: FontWeight.w400,
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

      // 评价
      _buildTitle(LocaleKeys.searchFilterReview.tr),
      _buildStars(),

      // 品牌
      _buildTitle(LocaleKeys.searchFilterBrand.tr),
      _buildBrands(),

      // 性别
      _buildTitle(LocaleKeys.searchFilterGender.tr),
      _buildGenders(),

      // 新旧
      _buildTitle(LocaleKeys.searchFilterCondition.tr),
      _buildConditions(),

      const Divider(),

      // 应用按钮
      ButtonWidget.primary(
        LocaleKeys.commonBottomApply.tr,
        onTap: controller.onFilterApplyTap,
      ).tight(
        width: 75,
        height: 25,
      ),

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
