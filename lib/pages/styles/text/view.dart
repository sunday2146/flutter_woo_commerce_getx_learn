import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class TextPage extends GetView<TextController> {
  const TextPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return ListView(
      children: [
        const ListTile(title: TextWidget.title1("title1")),
        const ListTile(title: TextWidget.title2("title2")),
        const ListTile(title: TextWidget.title3("title3")),
        const ListTile(title: TextWidget.body1("body1")),
        const ListTile(title: TextWidget.body2("body2")),
        const ListTile(title: TextWidget.body3("body3")),
        const ListTile(title: TextWidget.navigation(text: "navigation")),
        ListTile(title: TextWidget.button(text: "button")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextController>(
      init: TextController(),
      id: "text",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("text")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
