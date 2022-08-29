import '../locale_keys.dart';

/// 多语言 英文
Map<String, String> localeEn = {
  //////////////////////////////////////////////////////////////////////////////
  // 组件类别

  // 通用
  LocaleKeys.commonSearchInput: 'Enter keyword',
  LocaleKeys.commonBottomSave: 'Save',
  LocaleKeys.commonBottomRemove: 'Remove',
  LocaleKeys.commonBottomCancel: 'Cancel',
  LocaleKeys.commonBottomConfirm: 'Confirm',
  LocaleKeys.commonBottomApply: 'Apply',
  LocaleKeys.commonBottomBack: 'Back',
  LocaleKeys.commonSelectTips: 'Please select',
  LocaleKeys.commonMessageSuccess: '@method successfully',
  LocaleKeys.commonMessageIncorrect: '@method incorrect',

  // 验证提示
  LocaleKeys.validatorRequired: 'The field is obligatory',
  LocaleKeys.validatorEmail: 'The field must be an email',
  LocaleKeys.validatorMin: 'Length cannot be less than @size',
  LocaleKeys.validatorMax: 'Length cannot be greater than @size',
  LocaleKeys.validatorPassword: 'password must have between @min and @max digits',

  // APP 导航
  LocaleKeys.tabBarHome: 'Home',
  LocaleKeys.tabBarCart: 'Cart',
  LocaleKeys.tabBarMessage: 'Message',
  LocaleKeys.tabBarProfile: 'Profile',

  //////////////////////////////////////////////////////////////////////////////
  // 业务类别

  // 样式
  LocaleKeys.stylesTitle: 'Styles && Function && Debug',

  // welcome 欢迎
  LocaleKeys.welcomeOneTitle: 'Choose Your Desire Product',
  LocaleKeys.welcomeOneDesc: 'Contrary to popular belief, Lorem Ipsum is not simply random text',
  LocaleKeys.welcomeTwoTitle: 'Complete your shopping',
  LocaleKeys.welcomeTwoDesc: 'Contrary to popular belief, Lorem Ipsum is not simply random text',
  LocaleKeys.welcomeThreeTitle: 'Get product at your door',
  LocaleKeys.welcomeThreeDesc: 'Contrary to popular belief, Lorem Ipsum is not simply random text',
  LocaleKeys.welcomeSkip: 'Skip',
  LocaleKeys.welcomeNext: 'Next',
  LocaleKeys.welcomeStart: 'Get Started',

  // 登录、注册 - 通用
  LocaleKeys.loginForgotPassword: 'Forgot Password?',
  LocaleKeys.loginSignIn: 'Sign In',
  LocaleKeys.loginSignUp: 'Sign Up',
  LocaleKeys.loginOrText: '- OR -',

  // 注册 - new user
  LocaleKeys.registerTitle: 'Register',
  LocaleKeys.registerDesc: 'Sign up to continue',
  LocaleKeys.registerFormName: 'User Name',
  LocaleKeys.registerFormEmail: 'Email',
  LocaleKeys.registerFormPhoneNumber: 'Phone number',
  LocaleKeys.registerFormPassword: 'Password',
  LocaleKeys.registerFormFirstName: 'First name',
  LocaleKeys.registerFormLastName: 'Last name',
  LocaleKeys.registerHaveAccount: 'Already have an account?',

  // 注册PIN - register pin
  LocaleKeys.registerPinTitle: 'Verification',
  LocaleKeys.registerPinDesc: 'we will send you a Pin to continue your account',
  LocaleKeys.registerPinFormTip: 'Pin',
  LocaleKeys.registerPinButton: 'Submit',

  // 登录 - back login
  LocaleKeys.loginBackTitle: 'Welcome login!',
  LocaleKeys.loginBackDesc: 'Sign in to continue',
  LocaleKeys.loginBackFieldEmail: 'Name',
  LocaleKeys.loginBackFieldPassword: 'Password',

  // 商品 - 首页
  LocaleKeys.gHomeSearch: 'Search Product',
  LocaleKeys.gHomeFlashSell: 'Flash Sell',
  LocaleKeys.gHomeNewProduct: 'New Product',
  LocaleKeys.gHomeMore: 'ALL',

  // 商品 - 列表
  LocaleKeys.gFlashSellTitle: 'Flash Sell',
  LocaleKeys.gNewsTitle: 'New Product',

  // 商品 - 分类页
  LocaleKeys.gCategoryTitle: 'All Categories',

  // 商品 - 详情
  LocaleKeys.gDetailTitle: 'Product Info',
  LocaleKeys.gDetailTabProduct: 'Product',
  LocaleKeys.gDetailTabDetails: 'Details',
  LocaleKeys.gDetailTabReviews: 'Reviews',
  LocaleKeys.gDetailBtnAddCart: 'Add To Cart',
  LocaleKeys.gDetailBtnBuy: 'Buy Now',

  // 搜索
  LocaleKeys.searchPlaceholder: 'Search Product',
  LocaleKeys.searchOrder: 'Best Match',
  LocaleKeys.searchFilter: 'Filter',
  LocaleKeys.searchFilterPrice: 'Price',
  LocaleKeys.searchFilterSize: 'Size',
  LocaleKeys.searchFilterColor: 'Color',
  LocaleKeys.searchFilterReview: 'Review',
  LocaleKeys.searchFilterBrand: 'Brand',
  LocaleKeys.searchFilterGender: 'Gender',
  LocaleKeys.searchFilterCondition: 'Condition',

  // 我的
  LocaleKeys.myTabWishlist: 'Wishlist',
  LocaleKeys.myTabFollowing: 'Following',
  LocaleKeys.myTabVoucher: 'Voucher',
  LocaleKeys.myBtnMyOrder: 'My Order',
  LocaleKeys.myBtnMyWallet: 'My Wallet',
  LocaleKeys.myBtnEditProfile: 'Edit Profile',
  LocaleKeys.myBtnAddress: 'Address',
  LocaleKeys.myBtnNotification: 'Notification',
  LocaleKeys.myBtnLanguage: 'Language',
  LocaleKeys.myBtnTheme: 'Theme',
  LocaleKeys.myBtnWinGift: 'Win Gift',
  LocaleKeys.myBtnLogout: 'Logout',
  LocaleKeys.myBtnStyles: 'Styles',
  LocaleKeys.myBtnBillingAddress: 'Billing address',
  LocaleKeys.myBtnShippingAddress: 'Shipping address',

  // 订单配送地址
  LocaleKeys.addressViewTitle: '@type address',
  LocaleKeys.addressFirstName: 'First name',
  LocaleKeys.addressLastName: 'Last name',
  LocaleKeys.addressCountry: 'Country',
  LocaleKeys.addressState: 'State',
  LocaleKeys.addressPostCode: 'Post code',
  LocaleKeys.addressCity: 'City',
  LocaleKeys.addressAddress1: 'Address 1',
  LocaleKeys.addressAddress2: 'Address 2',
  LocaleKeys.addressCompany: 'Company',
  LocaleKeys.addressPhoneNumber: 'Phone number',
  LocaleKeys.addressEmail: 'Email',

  // 购物车
  LocaleKeys.gCartTitle: 'My Cart',
  LocaleKeys.gCartBtnSelectAll: 'Select All',
  LocaleKeys.gCartBtnApplyCode: 'Apply Code',
  LocaleKeys.gCartBtnCheckout: 'Checkout',
  LocaleKeys.gCartTextShippingCost: 'Shipping cost',
  LocaleKeys.gCartTextVocher: 'Voucher',
  LocaleKeys.gCartTextTotal: 'Total',

  // 下单 checkout
  LocaleKeys.placeOrderTitle: 'Checkout',
  LocaleKeys.placeOrderPayment: 'Payment Method',
  LocaleKeys.placeOrderShippingAddress: 'Shipping Address',
  LocaleKeys.placeOrderQuantity: 'Quantity',
  LocaleKeys.placeOrderPrice: 'Price',
  LocaleKeys.placeOrderPriceShipping: 'Shipping',
  LocaleKeys.placeOrderPriceDiscount: 'Discount',
  LocaleKeys.placeOrderPriceVoucherCode: 'Voucher Code',
  LocaleKeys.placeOrderPriceVoucherCodeEnter: 'Voucher Code Enter',
  LocaleKeys.placeOrderTotal: 'Total',
  LocaleKeys.placeOrderBtnPlaceOrder: 'Place Order',

  // 下单确认
  LocaleKeys.orderConfirmationTitle: 'Order Placed',
  LocaleKeys.orderConfirmationDesc: 'Your order was placed Successfully',
  LocaleKeys.orderConfirmationBtnHome: 'Go Home',

  // 优惠码
  LocaleKeys.promoCode: 'Apply Promo Code',
  LocaleKeys.promoDesc: 'Promo Code is simply dummy text the printing and typesetting industry',
  LocaleKeys.promoEnterCodeTip: 'Enter code here',

  // 订单页
  LocaleKeys.orderListTitle: 'Order List',
  LocaleKeys.orderDetailsTitle: 'Order Detail',
  LocaleKeys.orderDetailsOrderID: 'Order ID',
  LocaleKeys.orderDetailsBillFrom: 'Bill From',
  LocaleKeys.orderDetailsBillTo: 'Bill To',
  LocaleKeys.orderDetailsProduct: 'Product',
  LocaleKeys.orderDetailsRateQty: 'Rate & Qty',
  LocaleKeys.orderDetailsAmount: 'Amount',
  LocaleKeys.orderDetailsPaymentMethod: 'Payment Method',
  LocaleKeys.orderDetailsBalance: 'Balance',
  LocaleKeys.orderDetailsTotal: 'Total',
  LocaleKeys.orderDetailsPaid: 'Paid',
  LocaleKeys.orderDetailsShipping: 'Shipping',
  LocaleKeys.orderDetailsDiscount: 'Discount',
};
