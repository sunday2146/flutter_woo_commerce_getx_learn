import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

import 'common/index.dart';
import 'common/services/wp_http.dart';

class Global {
  static Future<void> init() async {
    // WidgetsFlutterBinding.ensureInitialized(); // 等待Flutter初始化完成
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized(); // 等待Flutter初始化完成
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    // 工具类
    await Storage().init();
    Loading();

    // await Future.wait([
    //   Get.putAsync<ConfigService>(() async => await ConfigService().init()), // Get.put 方式直接注入
    // ]).whenComplete(() {});

    // 初始化服务
    Get.put<ConfigService>(ConfigService()); // Get.put 方式直接注入
    Get.put<WPHttpService>(WPHttpService()); // Get.put 方式直接注入
  }
}
