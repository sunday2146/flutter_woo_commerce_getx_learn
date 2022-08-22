import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class OtherPage extends GetView<OtherController> {
  const OtherPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("OtherPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtherController>(
      init: OtherController(),
      id: "other",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("other")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
