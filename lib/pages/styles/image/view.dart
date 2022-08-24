import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class ImagePage extends GetView<ImageController> {
  const ImagePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return ListView(
      children: [
        const ListTile(
          leading: ImageWidget.url(
              "https://ducafecat.oss-cn-beijing.aliyuncs.com/wp-content/uploads/2022/02/90bb74497f090c48e1df1ec1ca31fb11-450x450.jpg"),
          title: TextWidget.body1("ImageWidget.url"),
        ),
        ListTile(
          leading: ImageWidget.asset(AssetsImages.pPaypalPng),
          title: const TextWidget.body1("ImageWidget.asset"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImageController>(
      init: ImageController(),
      id: "image",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("image")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
