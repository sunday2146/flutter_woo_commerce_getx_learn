import '../index.dart';

/// 系统 api
class SystemApi {
  /// Banner Ads
  static Future<List<KeyValueModel>> banners() async {
    List<KeyValueModel> bannerItems = [
      KeyValueModel(
          key: "01",
          value:
              "https://ducafecat.oss-cn-beijing.aliyuncs.com/flutter_woo_commerce_getx_ducafecat/banner01.png"),
      KeyValueModel(
          key: "02",
          value:
              "https://ducafecat.oss-cn-beijing.aliyuncs.com/flutter_woo_commerce_getx_ducafecat/banner02.png"),
      KeyValueModel(
          key: "03",
          value:
              "https://ducafecat.oss-cn-beijing.aliyuncs.com/flutter_woo_commerce_getx_ducafecat/banner03.png"),
    ];

    return bannerItems;
  }
}
