import 'package:flutter/material.dart';

import '../index.dart';

/// 占位图组件
class PlaceholdWidget extends StatelessWidget {
  // 资源图片地址
  final String? assetImagePath;

  const PlaceholdWidget({
    Key? key,
    this.assetImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageWidget.asset(assetImagePath ?? AssetsImages.homePlaceholderPng)
        .paddingHorizontal(AppSpace.page)
        .center();
  }
}
