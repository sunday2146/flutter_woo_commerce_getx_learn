import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/price_line.dart';

class BuyNowPage extends GetView<BuyNowController> {
  const BuyNowPage({Key? key, required this.product}) : super(key: key);

  // 商品数据
  final ProductModel product;

  // 标题
  Widget _buildTitle(String text) {
    return TextWidget.title2(text).paddingBottom(AppSpace.listRow);
  }

  // 支付方式
  Widget _buildPayment() {
    return List<Widget>.generate(
      controller.paymentList.length,
      (index) => ImageWidget.asset(
        controller.paymentList[index],
        width: 106.w,
        height: 50.w,
        backgroundColor: AppColors.surface,
      )
          .decorated(
            border: Border.all(
              color: AppColors.surfaceVariant,
              width: 0.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppRadius.button)),
          )
          .paddingRight(AppSpace.iconTextSmail),
    )
        .toList()
        .toListView(
          scrollDirection: Axis.horizontal,
        )
        .height(50.w)
        .paddingBottom(AppSpace.listRow);
  }

  // 送货地址
  Widget _buildShipping() {
    return <Widget>[
      // 文字
      TextWidget.body1(controller.shippingAddress).expanded(),

      // 图标
      IconWidget.icon(
        Icons.arrow_drop_down,
        size: 32,
      ),
    ]
        .toRow()
        .paddingAll(AppSpace.button)
        .decorated(
          color: AppColors.surfaceVariant,
          border: Border.all(
            color: AppColors.outline,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(AppRadius.button),
        )
        .onTap(controller.onShippingTap)
        .paddingBottom(AppSpace.listRow);
  }

  // 小计
  Widget _buildPrice() {
    return <Widget>[
      // Shipping: $2.05
      BuildPriceLine(
        titleString: LocaleKeys.placeOrderPriceShipping.tr,
        priceString: "\$${controller.shipping}",
      ),

      // Discount: $3.05
      BuildPriceLine(
        titleString: LocaleKeys.placeOrderPriceDiscount.tr,
        priceString: "\$${controller.discount}",
      ),

      // Voucher Code:
      BuildPriceLine(
        titleString: LocaleKeys.placeOrderPriceVoucherCode.tr,
        rightWidget: ButtonWidget.text(
          LocaleKeys.placeOrderPriceVoucherCodeEnter.tr,
          textSize: 9,
          textColor: AppColors.highlight,
          onTap: controller.onEnterCouponCode, // 输入优惠券码
        ),
      ),

      // Total: $14.60
      BuildPriceLine(
        leftWidget: TextWidget.body1(LocaleKeys.placeOrderTotal.tr),
        rightWidget: TextWidget.body1("\$${controller.totalPrice - controller.discount}"),
      ),

      //
    ].toColumn().paddingBottom(AppSpace.listRow);
  }

  // 底部按钮
  Widget _buildButtons() {
    return <Widget>[
      // 取消
      ButtonWidget.secondary(
        LocaleKeys.commonBottomCancel.tr,
        onTap: () => Get.back(),
      ).expanded(),

      // 间距
      SizedBox(width: AppSpace.iconTextLarge),

      // 立刻购买 Place Order
      ButtonWidget.primary(
        LocaleKeys.placeOrderBtnPlaceOrder.tr,
        onTap: controller.onCheckout, // 立刻购买事件
      ).expanded(),
    ].toRow(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 支付方式
      _buildTitle(LocaleKeys.placeOrderPayment.tr),
      _buildPayment(),

      // 送货地址
      _buildTitle(LocaleKeys.placeOrderShippingAddress.tr),
      _buildShipping(),

      // 数量
      _buildTitle(LocaleKeys.placeOrderQuantity.tr),
      QuantityWidget(
        quantity: controller.quantity,
        onChange: controller.onQuantityChange,
      ).paddingBottom(AppSpace.listRow),

      // 小计
      _buildTitle(LocaleKeys.placeOrderPrice.tr),
      _buildPrice(),

      // 按钮
      _buildButtons(),

      // end
    ]
        .toColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
        )
        .paddingAll(AppSpace.page);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BuyNowController>(
      init: BuyNowController(product),
      id: "buy_now",
      builder: (_) {
        return _buildView();
      },
    );
  }
}
