import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../index.dart';

/// pin 输入框
class PinPutWidget extends StatelessWidget {
  /// 提交事件
  final Function(String)? onSubmit;

  /// 焦点
  final FocusNode? focusNode;

  /// 文本编辑控制器
  final TextEditingController? controller;

  /// 验证函数
  final String? Function(String?)? validator;

  const PinPutWidget({
    Key? key,
    this.onSubmit,
    this.focusNode,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 默认
    final defaultPinTheme = PinTheme(
      width: 45,
      height: 45,
      textStyle: const TextStyle(
          fontSize: 18,
          // color: AppColors.surfaceVariant,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.surfaceVariant),
        borderRadius: BorderRadius.circular(5),
      ),
    );
    // 编辑
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.primary),
      borderRadius: BorderRadius.circular(5),
    );
    // 完成
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: AppColors.surfaceVariant,
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      length: 6,
      // 长度
      validator: validator,
      // 验证函数
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      // 显示光标
      autofocus: true,
      // 自动焦点
      obscureText: true,
      // 密码显示
      keyboardAppearance: Brightness.light,
      focusNode: focusNode,
      // 焦点
      controller: controller,
      // 本文控制器
      onCompleted: onSubmit, // 提交
    );
  }
}
