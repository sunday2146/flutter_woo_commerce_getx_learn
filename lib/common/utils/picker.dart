import 'package:flutter/material.dart';
import 'package:flutter_picker/Picker.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';

/// picker 选取器
class ActionPicker {
  /// 选取器 array , 多列
  static Picker array({
    required PickerAdapter adapter,
    List<int>? selecteds,
  }) {
    return Picker(
      /// 数据项高度
      itemExtent: 40,

      /// 选取器高度
      height: 270,

      /// 背景色
      backgroundColor: Colors.transparent,

      /// 容器颜色
      containerColor: Colors.transparent,

      /// 头部栏位隐藏
      hideHeader: true,

      /// 文字样式
      textStyle: TextStyle(
        fontSize: 18,
        height: 1.2,
        color: AppColors.secondary,
        // color: AppColors.,
      ),

      /// 数据适配器
      adapter: adapter,

      /// 选中项 [index]
      selecteds: selecteds,
    );
  }
}
