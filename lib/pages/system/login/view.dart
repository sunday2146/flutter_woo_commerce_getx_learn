import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // // 主视图
  // Widget _buildView() {
  //   return const HelloWidget();
  // }

  // 主视图
  Widget _buildView() {
    return Center(
      child: Column(
        children: [
          const HelloWidget(),
          ElevatedButton(
            onPressed: () {
              controller.onTap(DateTime.now().microsecondsSinceEpoch);
            },
            child: const Text("点击"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/splash");
            },
            child: const Text("splash"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("login")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
