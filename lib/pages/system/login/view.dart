import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("LoginPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: "login",
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
