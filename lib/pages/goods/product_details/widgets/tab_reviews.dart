import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';

/// 评论
class TabReviewsView extends GetView<ProductDetailsController> {
  final String uniqueTag;

  const TabReviewsView({Key? key, required this.uniqueTag}) : super(key: key);

  @override
  String? get tag => uniqueTag;

  @override
  Widget build(BuildContext context) {
    return const Text("评论");
  }
}
