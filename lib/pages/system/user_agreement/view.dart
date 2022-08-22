import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class UserAgreementPage extends GetView<UserAgreementController> {
  const UserAgreementPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("UserAgreementPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserAgreementController>(
      init: UserAgreementController(),
      id: "user_agreement",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("user_agreement")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
