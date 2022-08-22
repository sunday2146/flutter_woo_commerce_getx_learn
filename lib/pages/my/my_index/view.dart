import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class MyIndexPage extends GetView<MyIndexController> {
  const MyIndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("MyIndexPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyIndexController>(
      init: MyIndexController(),
      id: "my_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("my_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
