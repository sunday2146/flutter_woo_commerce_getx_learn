import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ProfileEditPage extends GetView<ProfileEditController> {
  const ProfileEditPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ProfileEditPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileEditController>(
      init: ProfileEditController(),
      id: "profile_edit",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("profile_edit")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
