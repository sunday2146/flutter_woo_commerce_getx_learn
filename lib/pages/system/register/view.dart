import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("register")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
