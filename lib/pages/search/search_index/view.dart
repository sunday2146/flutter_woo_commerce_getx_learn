import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class SearchIndexPage extends GetView<SearchIndexController> {
  const SearchIndexPage({Key? key}) : super(key: key);

  // 导航栏
  AppBar _buildAppBar() {
    return AppBar(
      titleSpacing: AppSpace.listItem,
      // 搜索栏
      title: InputWidget.textBorder(
        controller: controller.searchEditController,
        hintText: "You can try T-Shirt", //LocaleKeys.commonSearchInput.tr,
        // onChanged: (val) {
        //   printInfo(info: val);
        // },
      ).paddingRight(AppSpace.page),
    );
  }

  // 列表项
  Widget _buildListItem(TagsModel item) {
    return ListTile(
      title: TextWidget.body1(item.name ?? ""),
      trailing: IconWidget.icon(
        Icons.north_west,
        color: AppColors.primary,
      ),
      onTap: () => controller.onListItemTap(item),
    );
  }

  // 列表
  Widget _buildList() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        TagsModel item = controller.tagsList[index];
        return _buildListItem(item);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemCount: controller.tagsList.length,
    );
  }

  // 主视图
  Widget _buildView() {
    return _buildList();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchIndexController>(
      init: SearchIndexController(),
      id: "search_index",
      builder: (_) {
        return Scaffold(
          // 搜索栏
          appBar: _buildAppBar(),
          // 内容
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
