import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../index.dart';

/// 分类导航项
class CategoryListItemWidget extends StatelessWidget {
  /// 分类数据
  final CategoryModel category;

  /// 选中代码
  final int? selectId;

  /// tap 事件
  final Function(int categoryId)? onTap;

  const CategoryListItemWidget({
    Key? key,
    required this.category,
    this.onTap,
    this.selectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      // 图
      ImageWidget.url(
        category.image?.src ?? "", // 图片地址
        width: 52.w,
        height: 52.w,
      ),
      // 文字
      TextWidget.body1(
        category.name ?? "-", // 文字内容
        size: 18.sp,
        color: selectId == category.id ? AppColors.onSecondary : null, // 选中颜色
      ),
    ]
        .toColumn(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        )

        // padding 垂直间距
        .paddingVertical(AppSpace.button)

        // 背景色
        .backgroundColor(
          selectId == category.id
              ? AppColors.onSurfaceVariant
              : Colors.transparent,
        )
        .onTap(() => onTap?.call(category.id!));
  }
}
