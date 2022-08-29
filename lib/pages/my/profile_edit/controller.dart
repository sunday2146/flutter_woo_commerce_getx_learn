import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class ProfileEditController extends GetxController {
  ProfileEditController();

  // 表单 form
  GlobalKey formKey = GlobalKey<FormState>();

  // 输入框控制器
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  // 本机图片file
  File? filePhoto;

  // 初始数据_
  _initData() {
    // 用户 profile
    UserProfileModel profile = UserService.to.profile;

    // 初始值
    firstNameController.text = profile.firstName ?? "";
    lastNameController.text = profile.lastName ?? "";
    emailController.text = profile.email ?? "";

    update(["profile_edit"]);
  }

  // 选取照片
  void onSelectPhoto() {
    ActionBottomSheet.popModal(
      context: Get.context,
      child: PickerImageWidget(
        // 拍照
        onTapTake: (AssetEntity? result) async {
          if (result != null) {
            filePhoto = await result.file;
            update(["profile_edit"]);
          }
        },
        // 相册
        onTapAlbum: (List<AssetEntity>? result) async {
          if (result != null && result.isNotEmpty) {
            filePhoto = await result.first.file;
            update(["profile_edit"]);
          }
        },
      ),
    );
  }

  // 保存
  Future<void> onSave() async {
    if ((formKey.currentState as FormState).validate()) {
      // 密码 email 不修改 影响登录

      // 提交
      UserProfileModel profile = await UserApi.saveBaseInfo(UserProfileModel(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        // 注意：必须取消该行注释。否则在Edit Profile页面，点击 Save 后报错提示：无效参数： email
        email: emailController.text,
      ));

      // 更新本地
      UserService.to.setProfile(profile);
      Loading.success();
      update(["profile_edit"]);
    }
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();
  }
}
