import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class BuyNowPage extends GetView<BuyNowController> {
  const BuyNowPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("BuyNowPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BuyNowController>(
      init: BuyNowController(),
      id: "buy_now",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("buy_now")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
