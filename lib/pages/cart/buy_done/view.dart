import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class BuyDonePage extends GetView<BuyDoneController> {
  const BuyDonePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("BuyDonePage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BuyDoneController>(
      init: BuyDoneController(),
      id: "buy_done",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("buy_done")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
