import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class BuyDonePage extends GetView<BuyDoneController> {
  const BuyDonePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 图
      ImageWidget.asset(
        AssetsImages.orderConfirmedPng,
        height: 300.w,
      ).paddingBottom(40.w),

      // 文字
      TextWidget.title2(LocaleKeys.orderConfirmationTitle.tr).paddingBottom(10.w),
      TextWidget.body1(LocaleKeys.orderConfirmationDesc.tr).paddingBottom(50.w),

      // 返回按钮
      ButtonWidget.primary(
        LocaleKeys.commonBottomBack.tr,
        onTap: () => Get.back(),
      ).tight(
        width: 160.w,
        height: 50.w,
      ),
    ]
        .toColumn(
          mainAxisAlignment: MainAxisAlignment.center,
        )
        .center();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BuyDoneController>(
      init: BuyDoneController(),
      id: "buy_done",
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
