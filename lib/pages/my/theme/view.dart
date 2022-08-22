import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ThemePage extends GetView<ThemeController> {
  const ThemePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ThemePage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: ThemeController(),
      id: "theme",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("theme")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
