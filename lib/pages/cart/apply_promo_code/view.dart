import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class ApplyPromoCodePage extends GetView<ApplyPromoCodeController> {
  const ApplyPromoCodePage({Key? key, required this.onApplyCouponCode}) : super(key: key);

  // 应用优惠券
  final Function(String) onApplyCouponCode;

  // 底部按钮
  Widget _buildButtons() {
    return <Widget>[
      // cancel
      ButtonWidget.text(
        LocaleKeys.commonBottomCancel.tr,
        onTap: () => Get.back(),
      ),

      // apply
      ButtonWidget.text(
        LocaleKeys.commonBottomApply.tr,
        // 确认优惠券输入
        onTap: () {
          // 回调函数
          onApplyCouponCode(controller.couponController.text);
          Get.back();
        },
        textColor: AppColors.highlight,
        textWeight: FontWeight.w500,
      ),
    ].toRow(
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 标题
      TextWidget.title3(LocaleKeys.promoCode.tr).paddingBottom(AppSpace.listRow),

      // 说明
      TextWidget.body2(
        LocaleKeys.promoDesc.tr,
        maxLines: 3,
        softWrap: true,
      ).paddingBottom(AppSpace.listRow),

      // 输入优惠券
      InputWidget.textBorder(
        controller: controller.couponController,
        hintText: "Enter your coupon code",
      ).paddingBottom(AppSpace.listRow),

      // 按钮
      _buildButtons(),
    ]
        .toColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
        )
        .paddingAll(40)
        .backgroundColor(AppColors.background);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApplyPromoCodeController>(
      init: ApplyPromoCodeController(),
      id: "apply_promo_code",
      builder: (_) {
        return _buildView();
      },
    );
  }
}
