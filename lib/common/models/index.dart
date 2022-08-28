library models;

export 'welcome_model.dart';
export 'error_message_model.dart';
export 'user_token_model.dart';
export 'kv.dart';

// Api接口模型
export 'request/user_register_req.dart';
export 'request/user_login_req.dart';
export 'request/product.dart';

export 'woo/user_profile_model/user_profile_model.dart';
export 'woo/category_model/category_model.dart';
export 'woo/product_model/product_model.dart';
export 'woo/attribute_model/attribute_model.dart';
export 'woo/review_model/review_model.dart';
export 'woo/tags_model/tags_model.dart';
export 'woo/order_model/order_model.dart';
export 'woo/order_model/line_item.dart';

// 注意：多个模型中有相同的数据结构，只需选一个即可。比如：
// \lib\common\models\woo\user_profile_model\billing.dart
// \lib\common\models\woo\user_profile_model\shipping.dart
// \lib\common\models\woo\order_model\billing.dart
// \lib\common\models\woo\order_model\shipping.dart
export 'woo/order_model/billing.dart';
export 'woo/order_model/shipping.dart';

export 'woo/continents_model/continents_model.dart';
export 'woo/continents_model/country.dart';
export 'woo/coupons_model/coupons_model.dart';
