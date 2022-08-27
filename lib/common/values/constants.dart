/// 常量
class Constants {
  // wp 服务器
  static const wpApiBaseUrl = 'https://wpapi.ducafecat.tech'; // wp 服务器

  // 本地存储key
  static const storageLanguageCode = 'language_code'; // 本地存储key
  static const storageThemeCode = 'theme_code'; // Theme 主题
  static const storageFirstOpen = 'first_open'; // 首次打开
  static const storageToken = 'token'; // 登录成功后 token
  static const storageProfile = 'profile'; // 用户资料缓存

  // AES
  static const aesKey = 'aH5aH5bG0dC6aA3oN0cK4aU5jU6aK2lN';
  static const aesIV = 'hK6eB4aE1aF3gH5q';

  // 基础数据
  // 商品分类
  static const storageProductsCategories = 'home_categories';

  // 颜色定义
  static const storageProductsAttributesColors = 'products_attributes_colors';

  // 尺寸定义
  static const storageProductsAttributesSizes = 'products_attributes_sizes';

  // 品牌
  static const storageProductsAttributesBrand = 'products_attributes_brand';

  // 性别
  static const storageProductsAttributesGender = 'products_attributes_gender';

  // 新旧
  static const storageProductsAttributesCondition =
      'products_attributes_condition';

  // 首页离线
  static const storageHomeBanner = 'home_banner';
  static const storageHomeCategories = 'home_categories';
  static const storageHomeFlashSell = 'home_flash_sell';
  static const storageHomeNewSell = 'home_new_sell';
}
