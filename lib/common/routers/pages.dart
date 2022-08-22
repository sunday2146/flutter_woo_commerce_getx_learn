import 'package:flutter_woo_commerce_getx_learn/pages/system/login/index.dart';
import 'package:flutter_woo_commerce_getx_learn/pages/system/splash/index.dart';
import 'package:get/get.dart';

// 路由 Pages
class RoutePages {
  // 列表
  static List<GetPage> list = [
    GetPage(
      name: "/",
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: "/splash",
      page: () => const SplashPage(),
    ),
  ];
}
