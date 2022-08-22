import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("SplashPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("splash"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Get.back(); // 这种方式返回无效
                Get.offNamed("/");
              },
            ),
          ),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
