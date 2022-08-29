import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import 'index.dart';

class ProfileEditPage extends GetView<ProfileEditController> {
  const ProfileEditPage({Key? key}) : super(key: key);

  // 头像
  Widget _buildAvatar() {
    return ListTileWidget(
      title: TextWidget.body1(LocaleKeys.profileEditMyPhoto.tr),
      trailing: [
        controller.filePhoto != null
            ? ImageWidget.file(
                controller.filePhoto?.path ?? "",
                width: 50.w,
                height: 50.w,
                fit: BoxFit.cover,
                radius: 25.w,
              )
            : ImageWidget.url(
                // UserService.to.profile.avatarUrl,
                "https://ducafecat.oss-cn-beijing.aliyuncs.com/avatar/00258VC3ly1gty0r05zh2j60ut0u0tce02.jpg",
                width: 50.w,
                height: 50.w,
                fit: BoxFit.cover,
                radius: 25.w,
              ),
      ],
      padding: EdgeInsets.all(AppSpace.card),
      onTap: controller.onSelectPhoto,
    ).card().height(120.h).paddingBottom(AppSpace.card);
  }

  //  profile 表单
  Widget _buildProfileForm() {
    return <Widget>[
      // first name
      TextFormWidget(
        controller: controller.firstNameController,
        labelText: LocaleKeys.profileEditFirstName.tr,
        validator: Validatorless.multiple([
          Validatorless.required("The field is obligatory"),
          Validatorless.min(3, "Length cannot be less than @size".trParams({"size": "3"})),
          Validatorless.max(18, "Length cannot be greater than @size".trParams({"size": "18"})),
        ]),
      ),

      // last name
      TextFormWidget(
        controller: controller.lastNameController,
        labelText: LocaleKeys.profileEditLastName.tr,
        validator: Validatorless.multiple([
          Validatorless.required("The field is obligatory"),
          Validatorless.min(3, "Length cannot be less than @size".trParams({"size": "3"})),
          Validatorless.max(18, "Length cannot be greater than @size".trParams({"size": "18"})),
        ]),
      ),

      // Email
      TextFormWidget(
        keyboardType: TextInputType.emailAddress,
        controller: controller.emailController,
        labelText: LocaleKeys.profileEditEmail.tr,
        validator: Validatorless.multiple([
          Validatorless.required("The field is obligatory"),
          Validatorless.email(LocaleKeys.validatorEmail.tr),
        ]),
      ),
      // end
    ].toColumn().paddingAll(AppSpace.card).card().paddingBottom(AppSpace.card);
  }

  //  password 表单
  Widget _buildPasswordForm() {
    return <Widget>[
      // old password
      TextFormWidget(
        isObscure: true,
        keyboardType: TextInputType.visiblePassword,
        controller: controller.oldPasswordController,
        labelText: LocaleKeys.profileEditOldPassword.tr,
        hintText: LocaleKeys.profileEditPasswordTip.tr,
        validator: Validatorless.multiple([
          Validatorless.min(3, "Length cannot be less than @size".trParams({"size": "3"})),
          Validatorless.max(18, "Length cannot be greater than @size".trParams({"size": "18"})),
        ]),
      ),

      // new password
      TextFormWidget(
        isObscure: true,
        keyboardType: TextInputType.visiblePassword,
        controller: controller.newPasswordController,
        labelText: LocaleKeys.profileEditNewPassword.tr,
        hintText: LocaleKeys.profileEditPasswordTip.tr,
        validator: Validatorless.multiple([
          Validatorless.min(3, "Length cannot be less than @size".trParams({"size": "3"})),
          Validatorless.max(18, "Length cannot be greater than @size".trParams({"size": "18"})),
        ]),
      ),

      // confirm password
      TextFormWidget(
        isObscure: true,
        keyboardType: TextInputType.visiblePassword,
        controller: controller.confirmNewPasswordController,
        labelText: LocaleKeys.profileEditConfirmPassword.tr,
        hintText: LocaleKeys.profileEditPasswordTip.tr,
        validator: Validatorless.multiple([
          Validatorless.min(3, "Length cannot be less than @size".trParams({"size": "3"})),
          Validatorless.max(18, "Length cannot be greater than @size".trParams({"size": "18"})),
        ]),
      ),

      // end
    ].toColumn().paddingAll(AppSpace.card).card();
  }

  // 主视图
  Widget _buildView() {
    return SingleChildScrollView(
      child: <Widget>[
        // 头像
        _buildAvatar(),

        // 表单
        Form(
          key: controller.formKey, //设置globalKey，用于后面获取FormState
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: <Widget>[
            // profile 表单
            _buildProfileForm(),
            // password 表单
            _buildPasswordForm(),
          ].toColumn(),
        ).paddingBottom(AppSpace.card),

        // 保存按钮
        ButtonWidget.primary(
          LocaleKeys.commonBottomSave.tr,
          onTap: controller.onSave, // 保存函数的调用
          height: AppSpace.buttonHeight,
        ).paddingHorizontal(AppSpace.page),
      ].toColumn().padding(
            top: 45.h,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileEditController>(
      init: ProfileEditController(),
      id: "profile_edit",
      builder: (_) {
        return Scaffold(
          appBar: mainAppBarWidget(titleString: LocaleKeys.profileEditTitle.tr),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
