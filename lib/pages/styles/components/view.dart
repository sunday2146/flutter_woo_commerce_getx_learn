import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ComponentsPage extends GetView<ComponentsController> {
  const ComponentsPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ComponentsPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ComponentsController>(
      init: ComponentsController(),
      id: "components",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("components")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
