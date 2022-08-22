import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ProductDetailsPage extends GetView<ProductDetailsController> {
  const ProductDetailsPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ProductDetailsPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailsController>(
      init: ProductDetailsController(),
      id: "product_details",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("product_details")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
