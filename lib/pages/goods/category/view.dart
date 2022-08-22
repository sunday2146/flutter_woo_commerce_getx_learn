import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("CategoryPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      init: CategoryController(),
      id: "category",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("category")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
