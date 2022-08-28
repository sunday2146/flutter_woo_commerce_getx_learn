import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

/// 价格行组件
class BuildPriceLine extends StatelessWidget {
  const BuildPriceLine({
    Key? key,
    this.titleString,
    this.priceString,
    this.leftWidget,
    this.rightWidget,
  }) : super(key: key);

  /// 标题 字符串
  final String? titleString;

  /// 价格 字符串
  final String? priceString;

  /// 左侧组件
  final Widget? leftWidget;

  /// 右侧组件
  final Widget? rightWidget;

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 左侧
      leftWidget?.expanded() ?? TextWidget.body2(titleString ?? "").expanded(),

      // 右侧
      rightWidget ?? TextWidget.body2(priceString ?? ""),
    ].toRow().paddingBottom(AppSpace.listRow);
  }

  @override
  Widget build(BuildContext context) {
    return _buildView();
  }
}
