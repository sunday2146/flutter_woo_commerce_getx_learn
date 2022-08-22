import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class TextFormPage extends GetView<TextFormController> {
  const TextFormPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("TextFormPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextFormController>(
      init: TextFormController(),
      id: "text_form",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("text_form")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
