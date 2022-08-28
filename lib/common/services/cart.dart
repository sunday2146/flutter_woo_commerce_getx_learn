import 'package:get/get.dart';

import '../index.dart';

/// 购物车服务
class CartService extends GetxService {
  static CartService get to => Get.find();

  /// 购物车商品
  final List<LineItem> lineItems = RxList<LineItem>();

  /// 加入商品
  void addCart(LineItem item) {
    // 检查是否存在
    int index = lineItems.indexWhere((element) => element.productId == item.productId);
    if (index >= 0) {
      // 存在，更新数量
      item = lineItems.elementAt(index);
      item.quantity = item.quantity! + 1;
      item.price = double.parse(item.product!.price ?? "0");
      item.total = '${item.price! * item.quantity!}';
    } else {
      // 不存在，添加
      item.quantity = 1;
      item.price = double.parse(item.product!.price ?? "0");
      item.total = '${item.price! * item.quantity!}';
      lineItems.add(item);
    }
  }

  /// 删除商品
  void cancelOrder(int productId) {
    lineItems.removeWhere((element) => element.productId == productId);
  }

  /// 修改商品数量
  void changeQuantity(int productId, int quantity) {
    // 小于等于 0 删除
    if (quantity <= 0) {
      cancelOrder(productId);
      return;
    }

    // 设置商品数量
    LineItem item = lineItems.firstWhere((element) => element.productId == productId);
    item.quantity = quantity;
    item.price = double.parse(item.product!.price ?? "0");
    item.total = '${item.price! * item.quantity!}';
  }

  /// 清空购物车
  void clear() {
    lineItems.clear();
  }

  /// 商品数量
  int get lineItemsCount => lineItems.length;

  /// 运费
  double get shipping => 0;

  /// 折扣
  double get discount => 0;

  /// 商品合计价格
  double get totalItemsPrice => lineItems.fold<double>(0, (double previousValue, LineItem element) {
        return previousValue + double.parse(element.total ?? "0");
      });
}
