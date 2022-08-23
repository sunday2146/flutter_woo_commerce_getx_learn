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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

      // // 路由
      // initialRoute: "/",
      // getPages: RoutePages.list,

      // 路由
      initialRoute: RouteNames.systemSplash,
      // 启动屏 splash
      // initialRoute: RouteNames.systemWelcome, // 欢迎页 welcome
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
