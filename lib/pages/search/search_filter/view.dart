import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SearchFilterPage extends GetView<SearchFilterController> {
  const SearchFilterPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("SearchFilterPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchFilterController>(
      init: SearchFilterController(),
      id: "search_filter",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("search_filter")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
