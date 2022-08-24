import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
      designSize: const Size(414, 896), // 设计稿中设备的尺寸(单位随意,建议dp,但在使用过程中必须保持一致)
      // splitScreenMode: false, // 支持分屏尺寸
      // minTextAdapt: false, // 是否根据宽度/高度中的最小值适配文字
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',

          // 路由
          initialRoute: RouteNames.systemSplash,
          // initialRoute: RouteNames.stylesStylesIndex,
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
          fallbackLocale: Translation.fallbackLocale,
          // 默认语言种类

          // builder
          builder: (context, widget) {
            // 不随系统字体缩放比例
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },

          // 关闭调试标志
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
