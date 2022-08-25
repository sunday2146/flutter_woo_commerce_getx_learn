import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import 'index.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // 主视图，内容页
  Widget _buildView() {
    return SingleChildScrollView(
      child: <Widget>[
        // 头部标题
        PageTitleWidget(
          title: LocaleKeys.loginBackTitle.tr,
          desc: LocaleKeys.loginBackDesc.tr,
        ),

        // 表单
        _buildForm().card(),
      ]
          .toColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
          )
          .paddingHorizontal(AppSpace.page),
    );
  }

  // 表单页
  Widget _buildForm() {
    return Form(
      key: controller.formKey, //设置globalKey，用于后面获取FormState
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: <Widget>[
        // username
        TextFormWidget(
          autofocus: true,
          controller: controller.userNameController,
          labelText: LocaleKeys.registerFormName.tr,
          validator: Validatorless.multiple([
            Validatorless.required(LocaleKeys.validatorRequired.tr),
            Validatorless.min(3, LocaleKeys.validatorMin.trParams({"size": "3"})),
            Validatorless.max(20, LocaleKeys.validatorMax.trParams({"size": "20"})),
          ]),
        ).paddingBottom(AppSpace.listRow.w),

        // password
        TextFormWidget(
          controller: controller.passwordController,
          labelText: LocaleKeys.registerFormPassword.tr,
          isObscure: true,
          validator: Validatorless.multiple([
            Validatorless.required(LocaleKeys.validatorRequired.tr),
            Validators.password(
              6,
              18,
              LocaleKeys.validatorPassword.trParams(
                {"min": "6", "max": "18"},
              ),
            ),
          ]),
        ).paddingBottom(AppSpace.listRow.w * 2),

        // Forgot Password?
        TextWidget.body1(LocaleKeys.loginForgotPassword.tr).alignRight().paddingBottom(50.w),

        // 登录按钮
        ButtonWidget.primary(
          LocaleKeys.loginSignIn.tr,
          onTap: controller.onSignIn,
        ).paddingBottom(30.w),

        // OR
        TextWidget.body1(LocaleKeys.loginOrText.tr).paddingBottom(30.w),

        // 其它登录按钮
        <Widget>[
          ButtonWidget.iconTextOutlined(
            IconWidget.svg(AssetsSvgs.facebookSvg),
            "Facebook",
            borderColor: AppColors.surfaceVariant,
            width: 149.w,
            height: 44.w,
          ),
          ButtonWidget.iconTextOutlined(
            IconWidget.svg(AssetsSvgs.googleSvg),
            "Google",
            borderColor: AppColors.surfaceVariant,
            width: 149.w,
            height: 44.w,
          ),
        ].toRow(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),

        // end
      ].toColumn(),
    ).paddingAll(AppSpace.card);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      id: "login",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("login")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
