import 'package:flutter/material.dart';

import '../index.dart';

/// 颜色列表组件
class ColorsListWidget extends StatelessWidget {
  // 点击事件
  final Function(List<String> keys)? onTap;

  // 颜色列表
  final List<KeyValueModel<AttributeModel>> itemList;

  // 选中的颜色
  final List<String> keys;

  // 单个尺寸
  final double? size;

  // 边框颜色
  final Color? borderSelectedColor;

  // 元素间距
  final double? spacing;

  // 行间距
  final double? runSpacing;

  // 构造
  const ColorsListWidget({
    Key? key,
    this.onTap,
    required this.itemList,
    required this.keys,
    this.size,
    this.spacing,
    this.runSpacing,
    this.borderSelectedColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      for (var item in itemList)
        SizedBox(
          width: size ?? 24,
          height: size ?? 24,
        )
            // 装饰器
            .decorated(
              // 背景
              color: item.value.slug?.toColor,
              // 边框
              border: keys.hasValue(item.key) == true
                  ? Border.all(
                      color: borderSelectedColor ?? AppColors.highlight,
                      width: 2,
                    )
                  : null,
              // 圆角
              borderRadius: BorderRadius.circular(size ?? 12),
            )
            // 紧约束
            .tight(width: size, height: size)
            // 点击
            .onTap(() {
          if (keys.hasValue(item.key)) {
            keys.remove(item.key);
          } else {
            keys.add(item.key);
          }
          onTap?.call(keys);
        })
    ].toWrap(
      spacing: spacing ?? AppSpace.listItem,
      runSpacing: runSpacing ?? AppSpace.listRow,
    );
  }
}
