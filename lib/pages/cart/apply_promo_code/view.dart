import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ApplyPromoCodePage extends GetView<ApplyPromoCodeController> {
  const ApplyPromoCodePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ApplyPromoCodePage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplyPromoCodeController>(
      init: ApplyPromoCodeController(),
      id: "apply_promo_code",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("apply_promo_code")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
