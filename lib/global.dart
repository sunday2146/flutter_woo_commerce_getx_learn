import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/index.dart';

class Global {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();  // 等待Flutter初始化完成

    // 工具类
    await Storage().init();

    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()), // Get.put 方式直接注入
    ]).whenComplete(() {});
  }
}
