import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'index.dart';
import 'widgets/index.dart';

class SearchFilterPage extends GetView<SearchFilterController> {
  const SearchFilterPage({Key? key}) : super(key: key);

  // 搜索过滤栏
  Widget _buildFilterBar() {
    return <Widget>[
      // 排序 Best Match
      DropdownWidget(
        items: controller.orderList,
        hintText: controller.orderSelected.value,
        onChanged: controller.onOrderTap,
      )
          .decorated(
            border: Border.all(
              color: AppColors.surfaceVariant,
              width: 1,
            ),
          )
          .height(40.h)
          .expanded(),

      // 筛选 Filter
      ButtonWidget.dropdown(
        LocaleKeys.searchFilter.tr,
        IconWidget.icon(
          Icons.expand_more,
          color: AppColors.primary,
        ),
        onTap: controller.onFilterOpenTap,
        textSize: 15,
        textColor: AppColors.secondary,
        textWeight: FontWeight.w400,
        borderColor: AppColors.surfaceVariant,
        height: 40.h,
      ).expanded(),
    ].toRow();
  }

  // 数据列表
  Widget _buildListView() {
    return GetBuilder<SearchFilterController>(
      id: "filter_products",
      builder: (_) {
        return controller.items.isEmpty
            ?
            // 占位图
            const PlaceholdWidget().sliverBox
            :
            // 数据列表
            SliverGrid.extent(
                maxCrossAxisExtent: 120,
                mainAxisSpacing: AppSpace.listRow,
                // 主轴间距
                crossAxisSpacing: AppSpace.listItem,
                // 交叉轴间距
                childAspectRatio: 0.7,
                // 宽高比
                children: controller.items.map((product) {
                  return ProductItemWidget(
                    product, // 商品
                    imgHeight: 117.w, // 图片高度
                  );
                }).toList(),
              );
      },
    );
  }

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 筛选栏
      _buildFilterBar(),

      // 数据列表
      SmartRefresher(
        controller: controller.refreshController,
        // 刷新控制器
        enablePullUp: true,
        // 启用上拉加载
        onRefresh: controller.onRefresh,
        // 下拉刷新回调
        onLoading: controller.onLoading,
        // 上拉加载回调
        footer: const SmartRefresherFooterWidget(),
        // 底部加载更多
        child: CustomScrollView(
          slivers: [
            _buildListView().sliverPaddingHorizontal(AppSpace.button),
          ],
        ),
      ).expanded(),
    ].toColumn();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchFilterController>(
      init: SearchFilterController(),
      id: "search_filter",
      builder: (_) {
        return Scaffold(
          // key
          key: controller.scaffoldKey,
          // 导航
          appBar: mainAppBarWidget(
            // 返回按钮
            leading: ButtonWidget.icon(
              IconWidget.icon(
                Icons.arrow_back,
                color: AppColors.primary,
              ),
              onTap: () => Get.back(),
            ),
            // 输入文字
            hintText: LocaleKeys.searchPlaceholder.tr,
            // 点击事件
            onTap: () => Get.back(),
          ),

          // 内容
          body: _buildView(),

          // 右侧弹出 Drawer
          endDrawer: const Drawer(
            child: SafeArea(child: FilterView()),
          ),
        );
      },
    );
  }
}
