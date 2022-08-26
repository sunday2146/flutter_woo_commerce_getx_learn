import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'index.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({Key? key}) : super(key: key);

  // 左侧导航
  Widget _buildLeftNav() {
    return GetBuilder<CategoryController>(
      id: "left_nav", // 唯一标识
      builder: (_) {
        return ListView.separated(
          itemBuilder: (context, index) {
            var item = controller.categoryItems[index]; // 分类项数据
            return CategoryListItemWidget(
              category: item, // 分类数据
              selectId: controller.categoryId, // 选中代码
              onTap: controller.onCategoryTap, // tap 事件
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: AppSpace.listRow.w); // 间距
          },
          itemCount: controller.categoryItems.length, // 分类项数量
        )
            // 指定高度 100
            .width(100.w)

            // 背景色
            .decorated(
              color: AppColors.surfaceVariant,
            )

            // 右上，右下 裁剪圆角
            .clipRRect(
              topRight: AppRadius.card.w,
              bottomRight: AppRadius.card.w,
            );
      },
    );
  }

  /// 右侧商品列表
  Widget _buildProductList() {
    return GetBuilder<CategoryController>(
      id: "product_list",
      builder: (controller) {
        return SmartRefresher(
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
          child: controller.items.isEmpty
              ?
              // 占位图
              const PlaceholdWidget()
              :
              // 商品列表
              GridView.builder(
                  itemCount: controller.items.length, // 数据长度
                  itemBuilder: (context, index) {
                    var product = controller.items[index]; // 商品项数据
                    // 商品项组件
                    return ProductItemWidget(
                      product, // 商品
                      imgHeight: 117.w, // 图片高度
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 每行2个
                    mainAxisSpacing: AppSpace.listRow, // 主轴间距
                    crossAxisSpacing: AppSpace.listItem, // 交叉轴间距
                    childAspectRatio: 0.8, // 宽高比
                  ),
                ),
        )
            // padding 水平间距
            .paddingHorizontal(AppSpace.listView);
      },
    );
  }

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 左侧导航
      _buildLeftNav(),
      // 右侧商品列表
      _buildProductList().expanded(),
    ].toRow();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      init: CategoryController(),
      id: "category",
      builder: (_) {
        return Scaffold(
          // 顶部导航
          appBar: mainAppBarWidget(
            titleString: LocaleKeys.gCategoryTitle.tr,
          ),
          // 内容
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
