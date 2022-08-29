import '../index.dart';

// 订单
class OrderApi {
  /// 创建订单
  static Future<OrderModel> crateOrder({
    // 商品列表
    required List<LineItem> lineItem,
    // 优惠券列表
    required List<CouponsModel> lineCoupons,
  }) async {
    var data = {
      // 商品列表
      "line_items":
          lineItem.map((e) => {"product_id": e.productId!, "quantity": e.quantity!}).toList(),

      // 优惠券
      "coupon_lines": lineCoupons.map((e) => {"code": e.code!}).toList(),

      // 账单地址
      "billing": UserService.to.profile.billing!.toJson(),

      // 送货地址
      "shipping": UserService.to.profile.shipping!.toJson(),
    };
    var res = await WPHttpService.to.post(
      '/orders',
      data: data,
    );
    return OrderModel.fromJson(res.data);
  }

  /// 订单列表
  static Future<List<OrderModel>> orders(OrdersReq req) async {
    var res = await WPHttpService.to.get(
      '/orders',
      params: req.toJson(),
    );

    List<OrderModel> orders = [];
    for (var item in res.data) {
      orders.add(OrderModel.fromJson(item));
    }
    return orders;
  }
}
