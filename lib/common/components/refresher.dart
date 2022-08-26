import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../index.dart';

/// 底部加载更多组件
class SmartRefresherFooterWidget extends StatelessWidget {
  /// 底部高度
  final double? height;

  /// 图标大小
  final double? iconSize;

  const SmartRefresherFooterWidget({
    Key? key,
    this.iconSize,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClassicFooter(
      height: height ?? 60 + MediaQuery.of(context).padding.bottom + 30, // 底部高度
      loadingIcon: const CupertinoActivityIndicator().tight(
        width: iconSize ?? 25,
        height: iconSize ?? 25,
      ), // 加载中
      outerBuilder: (child) => child.center().height(height ?? 60), // 内容
    );
  }
}
