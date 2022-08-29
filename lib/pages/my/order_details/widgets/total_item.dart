import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

/// 小计项
class BuildTotalItem extends StatelessWidget {
  const BuildTotalItem({
    Key? key,
    this.title,
    this.price,
    this.currencySymbol,
  }) : super(key: key);

  /// 标题
  final String? title;

  /// 价格
  final String? price;

  /// 货币符号
  final String? currencySymbol;

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // title
      TextWidget.body1(title ?? "").expanded(),

      // price
      TextWidget.body2("$currencySymbol $price"),
    ].toRow();
  }

  @override
  Widget build(BuildContext context) {
    return _buildView();
  }
}
