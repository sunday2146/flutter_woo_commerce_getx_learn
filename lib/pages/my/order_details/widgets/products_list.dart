import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

/// 商品列表
class BuildProductList extends StatelessWidget {
  const BuildProductList({
    Key? key,
    required this.lineItems,
    this.currencySymbol,
  }) : super(key: key);

  /// 购物列表
  final List<LineItem> lineItems;

  /// 货币符号
  final String? currencySymbol;

  // 标题
  TableRow _tableHeader() {
    return TableRow(
      children: [
        const SizedBox(width: 50),
        TextWidget.body1(LocaleKeys.orderDetailsProduct.tr),
        TextWidget.body1(LocaleKeys.orderDetailsRateQty.tr),
        TextWidget.body1(LocaleKeys.orderDetailsAmount.tr),
      ],
    );
  }

  // 主视图
  Widget _buildView() {
    List<TableRow> ws = [];

    // 头部
    ws.add(_tableHeader());

    // 商品列表
    for (int i = 0; i < lineItems.length; i++) {
      LineItem item = lineItems[i];
      TableRow tr = TableRow(children: [
        // 编号
        TextWidget.body2("${i + 1}").alignCenter(),

        // 图 + 名称
        <Widget>[
          ImageWidget.url(
            Convert.aliImageResize(item.product?.images?[0].src ?? "", width: 140),
            width: 70.w,
            height: 70.w,
            radius: AppRadius.image,
          ),
          TextWidget.body2(item.product?.name ?? ""),
        ].toColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
        ),

        // 单价x数量
        TextWidget.body2(
          "${item.price} x ${item.quantity}",
        ),

        // 金额
        TextWidget.body2("$currencySymbol ${item.total}"),
      ]);
      ws.add(tr);
    }

    return Table(
      // 列宽
      columnWidths: const {
        0: FixedColumnWidth(50.0),
        2: FixedColumnWidth(100.0),
        3: FixedColumnWidth(80.0),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: ws,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildView();
  }
}
