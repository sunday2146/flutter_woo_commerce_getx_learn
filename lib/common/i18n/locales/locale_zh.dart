import '../locale_keys.dart';

/// 多语言 中文
Map<String, String> localeZh = {
  //////////////////////////////////////////////////////////////////////////////
  // 组件类别

  // 通用
  LocaleKeys.commonSearchInput: '输入关键字',
  LocaleKeys.commonBottomSave: '保存',
  LocaleKeys.commonBottomRemove: '删除',
  LocaleKeys.commonBottomCancel: '取消',
  LocaleKeys.commonBottomConfirm: '确认',
  LocaleKeys.commonBottomApply: '应用',
  LocaleKeys.commonBottomBack: '返回',
  LocaleKeys.commonSelectTips: '请选择',
  LocaleKeys.commonMessageSuccess: '@method 成功',
  LocaleKeys.commonMessageIncorrect: '@method 不正确',

  // 验证提示
  LocaleKeys.validatorRequired: '字段不能为空',
  LocaleKeys.validatorEmail: '请输入 email 格式',
  LocaleKeys.validatorMin: '长度不能小于 @size',
  LocaleKeys.validatorMax: '长度不能大于 @size',
  LocaleKeys.validatorPassword: '密码长度必须 大于 @min 小于 @max',

  // APP 导航
  LocaleKeys.tabBarHome: '首页',
  LocaleKeys.tabBarCart: '购物车',
  LocaleKeys.tabBarMessage: '消息',
  LocaleKeys.tabBarProfile: '我的',

  //////////////////////////////////////////////////////////////////////////////
  // 业务类别

  // 样式
  LocaleKeys.stylesTitle: '样式 && 功能 && 调试',

  // welcome 欢迎
  LocaleKeys.welcomeOneTitle: '选择您喜欢的产品',
  LocaleKeys.welcomeOneDesc: 'Contrary to popular belief, Lorem Ipsum is not simply random text',
  LocaleKeys.welcomeTwoTitle: '完成您的购物',
  LocaleKeys.welcomeTwoDesc: 'Contrary to popular belief, Lorem Ipsum is not simply random text',
  LocaleKeys.welcomeThreeTitle: '足不出户的购物体验',
  LocaleKeys.welcomeThreeDesc: 'Contrary to popular belief, Lorem Ipsum is not simply random text',
  LocaleKeys.welcomeSkip: '跳过',
  LocaleKeys.welcomeNext: '下一页',
  LocaleKeys.welcomeStart: '立刻开始',

  // 登录、注册 - 通用
  LocaleKeys.loginForgotPassword: '忘记密码?',
  LocaleKeys.loginSignIn: '登 陆',
  LocaleKeys.loginSignUp: '注 册',
  LocaleKeys.loginOrText: '- 或者 -',

  // 注册 - register user
  LocaleKeys.registerTitle: '欢迎',
  LocaleKeys.registerDesc: '注册新账号',
  LocaleKeys.registerFormName: '登录账号',
  LocaleKeys.registerFormEmail: '电子邮件',
  LocaleKeys.registerFormPhoneNumber: '电话号码',
  LocaleKeys.registerFormPassword: '密码',
  LocaleKeys.registerFormFirstName: '姓',
  LocaleKeys.registerFormLastName: '名',
  LocaleKeys.registerHaveAccount: '你有现成账号?',

  // 注册PIN - register pin
  LocaleKeys.registerPinTitle: '验证',
  LocaleKeys.registerPinDesc: '我们将向您发送PIN码以继续您的帐户',
  LocaleKeys.registerPinFormTip: 'Pin',
  LocaleKeys.registerPinButton: '提交',

  // 登录 - back login
  LocaleKeys.loginBackTitle: '欢迎登陆!',
  LocaleKeys.loginBackDesc: '登陆后继续',
  LocaleKeys.loginBackFieldEmail: '账号',
  LocaleKeys.loginBackFieldPassword: '登陆密码',

  // 商品 - 首页
  LocaleKeys.gHomeSearch: '搜索商品',
  LocaleKeys.gHomeFlashSell: '热卖商品',
  LocaleKeys.gHomeNewProduct: '新上商品',
  LocaleKeys.gHomeMore: '所有',

  // 商品 - 列表
  LocaleKeys.gFlashSellTitle: '热卖商品列表',
  LocaleKeys.gNewsTitle: '新商品列表',

  // 商品 - 分类
  LocaleKeys.gCategoryTitle: '所有分类',

  // 商品 - 详情
  LocaleKeys.gDetailTitle: '商品信息',
  LocaleKeys.gDetailTabProduct: '规格',
  LocaleKeys.gDetailTabDetails: '说明',
  LocaleKeys.gDetailTabReviews: '评论',
  LocaleKeys.gDetailBtnAddCart: '加入购物车',
  LocaleKeys.gDetailBtnBuy: '立刻购买',

  // 搜索
  LocaleKeys.searchPlaceholder: '搜索商品',
  LocaleKeys.searchOrder: '最佳匹配',
  LocaleKeys.searchFilter: '筛选',
  LocaleKeys.searchFilterPrice: '价格',
  LocaleKeys.searchFilterSize: '尺寸',
  LocaleKeys.searchFilterColor: '颜色',
  LocaleKeys.searchFilterReview: '星级',
  LocaleKeys.searchFilterBrand: '品牌',
  LocaleKeys.searchFilterGender: '性别',
  LocaleKeys.searchFilterCondition: '状况',

  // 我的
  LocaleKeys.myTabWishlist: '喜欢',
  LocaleKeys.myTabFollowing: '关注',
  LocaleKeys.myTabVoucher: '收据',
  LocaleKeys.myBtnMyOrder: '我的订单',
  LocaleKeys.myBtnMyWallet: '我的钱包',
  LocaleKeys.myBtnEditProfile: '编辑个人资料',
  LocaleKeys.myBtnAddress: '送货地址',
  LocaleKeys.myBtnNotification: '消息',
  LocaleKeys.myBtnLanguage: '语言',
  LocaleKeys.myBtnTheme: '主题',
  LocaleKeys.myBtnWinGift: '赢取礼物',
  LocaleKeys.myBtnStyles: '样式组件',
  LocaleKeys.myBtnLogout: '注销',
  LocaleKeys.myBtnBillingAddress: '发票地址',
  LocaleKeys.myBtnShippingAddress: '配送地址',

  // 订单配送地址
  LocaleKeys.addressViewTitle: '@type 地址',
  LocaleKeys.addressFirstName: '姓',
  LocaleKeys.addressLastName: '名',
  LocaleKeys.addressCountry: '国家',
  LocaleKeys.addressState: '洲省',
  LocaleKeys.addressPostCode: '邮编',
  LocaleKeys.addressCity: '城市',
  LocaleKeys.addressAddress1: '地址 1',
  LocaleKeys.addressAddress2: '地址 2',
  LocaleKeys.addressCompany: '国家',
  LocaleKeys.addressPhoneNumber: '电话号码',
  LocaleKeys.addressEmail: '电子邮件',

  // 购物车
  LocaleKeys.gCartTitle: '我的购物车',
  LocaleKeys.gCartBtnSelectAll: '全选',
  LocaleKeys.gCartBtnApplyCode: '使用优惠码',
  LocaleKeys.gCartBtnCheckout: '支付',
  LocaleKeys.gCartTextShippingCost: '配送费',
  LocaleKeys.gCartTextVocher: '代金券',
  LocaleKeys.gCartTextTotal: '合计',

  // 下单 Checkout
  LocaleKeys.placeOrderTitle: '确认订单',
  LocaleKeys.placeOrderPayment: '支付方式',
  LocaleKeys.placeOrderShippingAddress: '送货地址',
  LocaleKeys.placeOrderQuantity: '数量',
  LocaleKeys.placeOrderPrice: '价格',
  LocaleKeys.placeOrderPriceShipping: '运费',
  LocaleKeys.placeOrderPriceDiscount: '折扣',
  LocaleKeys.placeOrderPriceVoucherCode: '代金券',
  LocaleKeys.placeOrderPriceVoucherCodeEnter: '输入代金券',
  LocaleKeys.placeOrderTotal: '小计',
  LocaleKeys.placeOrderBtnPlaceOrder: '下单确认',

  // 下单确认
  LocaleKeys.orderConfirmationTitle: '已下订单',
  LocaleKeys.orderConfirmationDesc: '您的订单已成功下达',
  LocaleKeys.orderConfirmationBtnHome: '返回首页',

  // 优惠码
  LocaleKeys.promoCode: '使用优惠码',
  LocaleKeys.promoDesc: '促销代码只是印刷和排版行业的虚拟文本',
  LocaleKeys.promoEnterCodeTip: '输入代码',

  // 订单页
  LocaleKeys.orderListTitle: '订单列表',
  LocaleKeys.orderDetailsTitle: '订单详情',
  LocaleKeys.orderDetailsOrderID: '订单 ID',
  LocaleKeys.orderDetailsBillFrom: '始发地',
  LocaleKeys.orderDetailsBillTo: '目的地',
  LocaleKeys.orderDetailsProduct: '商品',
  LocaleKeys.orderDetailsRateQty: '单价 & 数量',
  LocaleKeys.orderDetailsAmount: '小计',
  LocaleKeys.orderDetailsPaymentMethod: '支付方式',
  LocaleKeys.orderDetailsBalance: '结算',
  LocaleKeys.orderDetailsTotal: '合计',
  LocaleKeys.orderDetailsPaid: '支付',
  LocaleKeys.orderDetailsShipping: '运费',
  LocaleKeys.orderDetailsDiscount: '折扣',
};
