import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

// 页面标题 组件
class PageTitleWidget extends StatelessWidget {
  /// 标题
  final String title;

  /// 说明
  final String desc;

  const PageTitleWidget({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      TextWidget.title1(title),
      TextWidget.body2(desc),
    ]
        .toColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
        )
        .padding(
          left: 10,
          top: 10,
          bottom: 30,
        );
  }
}
