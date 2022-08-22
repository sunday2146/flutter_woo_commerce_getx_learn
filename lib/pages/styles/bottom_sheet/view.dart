import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class BottomSheetPage extends GetView<BottomSheetController> {
  const BottomSheetPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("BottomSheetPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomSheetController>(
      init: BottomSheetController(),
      id: "bottom_sheet",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("bottom_sheet")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
