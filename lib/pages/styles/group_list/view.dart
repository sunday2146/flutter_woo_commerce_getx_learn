import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class GroupListPage extends GetView<GroupListController> {
  const GroupListPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("GroupListPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GroupListController>(
      init: GroupListController(),
      id: "group_list",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("group_list")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
