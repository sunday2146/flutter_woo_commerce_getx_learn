import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class OrderDetailsPage extends GetView<OrderDetailsController> {
  const OrderDetailsPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("OrderDetailsPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderDetailsController>(
      init: OrderDetailsController(),
      id: "order_details",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("order_details")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
