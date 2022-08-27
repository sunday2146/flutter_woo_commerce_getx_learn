import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

/// 按钮列表项
class ButtonItemWidget extends StatelessWidget {
  final String title;
  final String svgPath;
  final Color? color;
  final Function()? onTap;

  const ButtonItemWidget({
    Key? key,
    required this.title,
    required this.svgPath,
    this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = this.color ?? AppColors.primary;
    return ListTileWidget(
      // 头部图标
      leading: <Widget>[
        // 底部圆形
        Container().tightSize(30.w).decorated(
              // 按主色 0.2 的透明度
              color: color.withOpacity(0.2),
              // 圆形边框
              borderRadius: BorderRadius.circular(30.w / 2),
            ),

        // 叠加图标
        IconWidget.svg(
          svgPath,
          color: color,
          size: 14.w,
        ),
      ].toStack(
        alignment: Alignment.center,
      ),

      // 间距
      leadingSpace: 20.w,

      // 标题
      title: TextWidget.body1(
        title,
        size: 15.sp,
        weight: FontWeight.w400,
      ),

      // 右侧箭头
      trailing: <Widget>[
        IconWidget.icon(
          Icons.arrow_forward_ios,
          size: 14.w,
          color: AppColors.outline,
        ),
      ],
    ).inkWell(
      onTap: onTap,
    );
  }
}
