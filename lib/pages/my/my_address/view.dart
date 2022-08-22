import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class MyAddressPage extends GetView<MyAddressController> {
  const MyAddressPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("MyAddressPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAddressController>(
      init: MyAddressController(),
      id: "my_address",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("my_address")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
