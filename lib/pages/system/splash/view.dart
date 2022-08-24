import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return ImageWidget.asset(
      AssetsImages.splashJpg,
      fit: BoxFit.fill, // 填充整个界面
    );
  }

  // Widget _buildView() {
  //   return Center(
  //     child: Text("SplashPage\nPlatForm version ${ConfigService.to.version}", textAlign: TextAlign.center),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return _buildView();
      },
    );
  }
}
