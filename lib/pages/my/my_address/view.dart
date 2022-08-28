import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_woo_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import 'index.dart';

class MyAddressPage extends GetView<MyAddressController> {
  const MyAddressPage({Key? key}) : super(key: key);

  // 表单
  Widget _buildForm() {
    return Form(
        key: controller.formKey, //设置globalKey，用于后面获取FormState
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: <Widget>[
          // first name
          TextFormWidget(
            isMustBeEnter: true,
            controller: controller.firstNameController,
            labelText: LocaleKeys.addressFirstName.tr,
            validator: Validatorless.multiple([
              Validatorless.required("The field is obligatory"),
              Validatorless.min(3,
                  "Length cannot be less than @size".trParams({"size": "3"})),
              Validatorless.max(
                  18,
                  "Length cannot be greater than @size"
                      .trParams({"size": "18"})),
            ]),
          ),

          // last name
          TextFormWidget(
            isMustBeEnter: true,
            controller: controller.lastNameController,
            labelText: LocaleKeys.addressLastName.tr,
            validator: Validatorless.multiple([
              Validatorless.required("The field is obligatory"),
              Validatorless.min(3,
                  "Length cannot be less than @size".trParams({"size": "3"})),
              Validatorless.max(
                  18,
                  "Length cannot be greater than @size"
                      .trParams({"size": "18"})),
            ]),
          ),

          // Country
          TextFormWidget(
            onTap: controller.onCountryPicker,
            readOnly: true,
            isMustBeEnter: true,
            controller: controller.countryController,
            labelText: LocaleKeys.addressCountry.tr,
            validator: Validatorless.multiple([
              Validatorless.required("The field is obligatory"),
            ]),
          ),

          // State
          TextFormWidget(
            onTap: controller.onStatesPicker,
            readOnly: true,
            isMustBeEnter: true,
            controller: controller.statesController,
            labelText: LocaleKeys.addressState.tr,
            validator: Validatorless.multiple([
              Validatorless.required("The field is obligatory"),
            ]),
          ),

          // Post Code
          TextFormWidget(
            isMustBeEnter: true,
            controller: controller.postCodeController,
            labelText: LocaleKeys.addressPostCode.tr,
            validator: Validatorless.multiple([
              Validatorless.required("The field is obligatory"),
              Validatorless.min(3,
                  "Length cannot be less than @size".trParams({"size": "3"})),
              Validatorless.max(
                  12,
                  "Length cannot be greater than @size"
                      .trParams({"size": "12"})),
            ]),
          ),

          // City
          TextFormWidget(
            isMustBeEnter: true,
            controller: controller.cityController,
            labelText: LocaleKeys.addressCity.tr,
            validator: Validatorless.multiple([
              Validatorless.required("The field is obligatory"),
            ]),
          ),

          // Address 1
          TextFormWidget(
            isMustBeEnter: true,
            controller: controller.address1Controller,
            labelText: LocaleKeys.addressAddress1.tr,
            validator: Validatorless.multiple([
              Validatorless.required("The field is obligatory"),
            ]),
          ),

          // Address 2
          TextFormWidget(
            controller: controller.address2Controller,
            labelText: LocaleKeys.addressAddress2.tr,
          ),

          // Company
          TextFormWidget(
            controller: controller.companyController,
            labelText: LocaleKeys.addressCompany.tr,
          ),

          // Phone Number
          if (controller.type == "Billing")
            TextFormWidget(
              isMustBeEnter: true,
              keyboardType: TextInputType.phone,
              controller: controller.phoneNumberController,
              labelText: LocaleKeys.addressPhoneNumber.tr,
              validator: Validatorless.multiple([
                Validatorless.required("The field is obligatory"),
                Validatorless.min(3,
                    "Length cannot be less than @size".trParams({"size": "3"})),
                Validatorless.max(
                    12,
                    "Length cannot be greater than @size"
                        .trParams({"size": "12"})),
              ]),
            ),

          // Email
          if (controller.type == "Billing")
            TextFormWidget(
              isMustBeEnter: true,
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailController,
              labelText: LocaleKeys.addressEmail.tr,
              validator: Validatorless.multiple([
                Validatorless.required("The field is obligatory"),
                Validatorless.email(LocaleKeys.validatorEmail.tr),
              ]),
            ),

          // end
        ].toColumn());
  }

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // 表单
      _buildForm().paddingBottom(30.h),

      // 保存按钮
      ButtonWidget.primary(
        LocaleKeys.commonBottomSave.tr,
        onTap: controller.onSave,
        height: AppSpace.buttonHeight,
      ),
    ].toColumn().paddingAll(AppSpace.page);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAddressController>(
      init: MyAddressController(),
      id: "my_address",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              LocaleKeys.addressViewTitle.trParams({
                "type": controller.type,
              }),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: _buildView(),
            ),
          ),
        );
      },
    );
  }
}
