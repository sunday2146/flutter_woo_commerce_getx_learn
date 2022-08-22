import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class LanguagePage extends GetView<LanguageController> {
  const LanguagePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("LanguagePage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageController>(
      init: LanguageController(),
      id: "language",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("language")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
