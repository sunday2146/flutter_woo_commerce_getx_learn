import '../index.dart';

// 优惠券
class CouponApi {
  /// 优惠券详情
  static Future<CouponsModel?> couponDetail(String code) async {
    var res = await WPHttpService.to.get(
      '/coupons',
      params: {
        "code": code,
      },
    );

    List<CouponsModel> coupons = [];
    for (var item in res.data) {
      coupons.add(CouponsModel.fromJson(item));
    }
    return coupons.isNotEmpty ? coupons.first : null;
  }
}
