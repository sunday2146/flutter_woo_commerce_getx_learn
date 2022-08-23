import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/index.dart';
import 'global.dart';

// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    return GetMaterialApp(
      title: 'Flutter Demo',

      // 路由
      // initialRoute: RouteNames.systemSplash,
      initialRoute: RouteNames.stylesStylesIndex,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],

      // 样式
      theme: ConfigService.to.isDarkModel ? AppTheme.dark : AppTheme.light,
      // 多语言
      translations: Translation(),
      // 词典
      localizationsDelegates: Translation.localizationsDelegates,
      // 代理
      supportedLocales: Translation.supportedLocales,
      // 支持的语言种类
      locale: ConfigService.to.locale,
      // 当前语言种类
      fallbackLocale: Translation.fallbackLocale, // 默认语言种类
    );
  }
}
