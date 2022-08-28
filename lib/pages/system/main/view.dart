import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:flutter_woo_commerce_getx_learn/pages/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  // Avoid using private types in public APIs.
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _MainViewGetX();
  }
}

class _MainViewGetX extends GetView<MainController> {
  const _MainViewGetX({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    DateTime? _lastPressedAt;
    return WillPopScope(
      // 防止连续点击两次退出
      onWillPop: () async {
        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt!) >
                const Duration(seconds: 1)) {
          _lastPressedAt = DateTime.now();
          Loading.toast('Press again to exit');
          return false;
        }
        await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return true;
      },
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        // 导航栏
        bottomNavigationBar: GetBuilder<MainController>(
          id: 'navigation',
          builder: (controller) {
            return Obx(() => BuildNavigation(
                  currentIndex: controller.currentIndex,
                  items: [
                    NavigationItemModel(
                      label: LocaleKeys.tabBarHome.tr,
                      icon: AssetsSvgs.navHomeSvg,
                    ),
                    NavigationItemModel(
                      label: LocaleKeys.tabBarCart.tr,
                      icon: AssetsSvgs.navCartSvg,
                      // 购物车数量
                      count: CartService.to.lineItemsCount,
                    ),
                    NavigationItemModel(
                      label: LocaleKeys.tabBarMessage.tr,
                      icon: AssetsSvgs.navMessageSvg,
                      count: 55,
                    ),
                    NavigationItemModel(
                      label: LocaleKeys.tabBarProfile.tr,
                      icon: AssetsSvgs.navProfileSvg,
                    ),
                  ],
                  onTap: controller.onJumpToPage, // 切换tab事件
                ));
          },
        ),
        // 内容页
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          onPageChanged: controller.onIndexChanged,
          children: const [
            HomePage(),
            CartIndexPage(),
            MsgIndexPage(),
            MyIndexPage(),
          ],

          // children: const [
          //   // 加入空页面占位
          //   Center(child: Text("1", style: TextStyle(fontSize: 40, color: Colors.red))),
          //   Center(child: Text("2", style: TextStyle(fontSize: 40, color: Colors.red))),
          //   Center(child: Text("3", style: TextStyle(fontSize: 40, color: Colors.red))),
          //   Center(child: Text("4", style: TextStyle(fontSize: 40, color: Colors.red))),
          // ],

          // 可以使用 List<Widget>.generate() 方法创建列表
          // children: List<Widget>.generate(
          //     4,
          //     (i) => Center(
          //         child: Text("${i + 1}", style: TextStyle(fontSize: 40, color: Colors.red)))),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      id: "main",
      builder: (_) => _buildView(),
    );
  }
}
