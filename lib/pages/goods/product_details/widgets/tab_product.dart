import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

/// 商品规格
class TabProductView extends GetView<ProductDetailsController> {
  final String uniqueTag;

  const TabProductView({Key? key, required this.uniqueTag}) : super(key: key);

  @override
  String? get tag => uniqueTag;

  @override
  Widget build(BuildContext context) {
    return const Text("商品规格");
  }
}
