import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class RegisterPinPage extends GetView<RegisterPinController> {
  const RegisterPinPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("RegisterPinPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterPinController>(
      init: RegisterPinController(),
      id: "register_pin",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("register_pin")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
