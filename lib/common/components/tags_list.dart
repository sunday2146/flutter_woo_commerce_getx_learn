import 'package:flutter/material.dart';

import '../index.dart';

/// 标签列表组件
class TagsListWidget extends StatelessWidget {
  // 点击事件
  final Function(List<String> keys)? onTap;

  // 颜色列表
  final List<KeyValueModel<AttributeModel>> itemList;

  // 选中的颜色
  final List<String> keys;

  // 宽
  final double? width;

  // 高
  final double? height;

  // 文字颜色
  final Color? textColor;

  // 文字选中颜色
  final Color? textSelectedColor;

  // 文字尺寸
  final double? textSize;

  // 文字 weight
  final FontWeight? textWeight;

  // 背景颜色
  final Color? bgColor;

  // 选中背景颜色
  final Color? bgSelectedColor;

  // 圆角
  final double? borderRadius;

  // 元素间距
  final double? spacing;

  // 行间距
  final double? runSpacing;

  // 是否圆形
  final bool? isCircular;

  // 尺寸
  final double? size;

  // 构造
  TagsListWidget({
    Key? key,
    this.onTap,
    required this.itemList,
    required this.keys,
    Color? bgColor,
    Color? bgSelectedColor,
    Color? textColor,
    Color? textSelectedColor,
    this.spacing,
    this.runSpacing,
    this.width = 50,
    this.height = 30,
    this.borderRadius = 3,
    this.textSize,
    this.textWeight,
    this.isCircular = false,
    this.size,
  })  : bgColor = bgColor ?? AppColors.surfaceVariant,
        bgSelectedColor = bgSelectedColor ?? AppColors.primary,
        textColor = textColor ?? AppColors.secondary,
        textSelectedColor = textSelectedColor ?? AppColors.onPrimary,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      for (var item in itemList)
        SizedBox(
          width: size ?? width,
          height: size ?? height,
          child: TextWidget.body2(
            item.value.name ?? "",
            color:
                keys.hasValue(item.key) == true ? textSelectedColor : textColor,
            textAlign: TextAlign.center,
            weight: textWeight ?? FontWeight.bold,
            size: textSize,
          )
              .center()
              // 装饰器
              .decorated(
                // 背景
                color:
                    keys.hasValue(item.key) == true ? bgSelectedColor : bgColor,
                // 圆角
                borderRadius: BorderRadius.circular(
                    isCircular == true ? size ?? 24 : borderRadius ?? 3),
              )
              // 点击
              .onTap(() {
            if (keys.hasValue(item.key)) {
              keys.remove(item.key);
            } else {
              keys.add(item.key);
            }
            onTap?.call(keys);
          }),
        )
    ].toWrap(
      spacing: spacing ?? AppSpace.listItem,
      runSpacing: runSpacing ?? AppSpace.listRow,
    );
  }
}
