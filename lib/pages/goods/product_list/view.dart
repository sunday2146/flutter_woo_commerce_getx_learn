import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ProductListPage extends GetView<ProductListController> {
  const ProductListPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ProductListPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductListController>(
      init: ProductListController(),
      id: "product_list",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("product_list")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
