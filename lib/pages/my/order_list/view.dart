import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class OrderListPage extends GetView<OrderListController> {
  const OrderListPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("OrderListPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderListController>(
      init: OrderListController(),
      id: "order_list",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("order_list")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
