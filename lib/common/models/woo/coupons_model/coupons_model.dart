import 'links.dart';

class CouponsModel {
  int? id;
  String? code;
  String? amount;
  String? status;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? discountType;
  String? description;
  dynamic dateExpires;
  dynamic dateExpiresGmt;
  int? usageCount;
  bool? individualUse;
  List<dynamic>? productIds;
  List<dynamic>? excludedProductIds;
  dynamic usageLimit;
  dynamic usageLimitPerUser;
  dynamic limitUsageToXItems;
  bool? freeShipping;
  List<dynamic>? productCategories;
  List<dynamic>? excludedProductCategories;
  bool? excludeSaleItems;
  String? minimumAmount;
  String? maximumAmount;
  List<dynamic>? emailRestrictions;
  List<String>? usedBy;
  List<dynamic>? metaData;
  Links? links;

  CouponsModel({
    this.id,
    this.code,
    this.amount,
    this.status,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.discountType,
    this.description,
    this.dateExpires,
    this.dateExpiresGmt,
    this.usageCount,
    this.individualUse,
    this.productIds,
    this.excludedProductIds,
    this.usageLimit,
    this.usageLimitPerUser,
    this.limitUsageToXItems,
    this.freeShipping,
    this.productCategories,
    this.excludedProductCategories,
    this.excludeSaleItems,
    this.minimumAmount,
    this.maximumAmount,
    this.emailRestrictions,
    this.usedBy,
    this.metaData,
    this.links,
  });

  factory CouponsModel.fromJson(Map<String, dynamic> json) => CouponsModel(
        id: json['id'] as int?,
        code: json['code'] as String?,
        amount: json['amount'] as String?,
        status: json['status'] as String?,
        dateCreated: json['date_created'] as String?,
        dateCreatedGmt: json['date_created_gmt'] as String?,
        dateModified: json['date_modified'] as String?,
        dateModifiedGmt: json['date_modified_gmt'] as String?,
        discountType: json['discount_type'] as String?,
        description: json['description'] as String?,
        dateExpires: json['date_expires'] as dynamic,
        dateExpiresGmt: json['date_expires_gmt'] as dynamic,
        usageCount: json['usage_count'] as int?,
        individualUse: json['individual_use'] as bool?,
        productIds: json['product_ids'] as List<dynamic>?,
        excludedProductIds: json['excluded_product_ids'] as List<dynamic>?,
        usageLimit: json['usage_limit'] as dynamic,
        usageLimitPerUser: json['usage_limit_per_user'] as dynamic,
        limitUsageToXItems: json['limit_usage_to_x_items'] as dynamic,
        freeShipping: json['free_shipping'] as bool?,
        productCategories: json['product_categories'] as List<dynamic>?,
        excludedProductCategories: json['excluded_product_categories'] as List<dynamic>?,
        excludeSaleItems: json['exclude_sale_items'] as bool?,
        minimumAmount: json['minimum_amount'] as String?,
        maximumAmount: json['maximum_amount'] as String?,
        emailRestrictions: json['email_restrictions'] as List<dynamic>?,
        // usedBy: json['used_by'] as List<String>?,
        // E/flutter (12891): [ERROR:flutter/lib/ui/ui_dart_state.cc(198)] Unhandled Exception: type 'List<dynamic>' is not a subtype of type 'List<String>?' in type cast
        // E/flutter (12891): #0      new CouponsModel.fromJson (package:flutter_woo_commerce_getx_learn/common/models/woo/coupons_model/coupons_model.dart:94:33)
        // E/flutter (12891): #1      CouponApi.couponDetail (package:flutter_woo_commerce_getx_learn/common/api/coupon.dart:16:32)
        // E/flutter (12891): <asynchronous suspension>
        // E/flutter (12891): #2      CartIndexController.onApplyCoupon (package:flutter_woo_commerce_getx_learn/pages/cart/cart_index/controller.dart:63:28)
        // E/flutter (12891): <asynchronous suspension>
        // E/flutter (12891):

        metaData: json['meta_data'] as List<dynamic>?,
        links:
            json['_links'] == null ? null : Links.fromJson(json['_links'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'code': code,
        'amount': amount,
        'status': status,
        'date_created': dateCreated,
        'date_created_gmt': dateCreatedGmt,
        'date_modified': dateModified,
        'date_modified_gmt': dateModifiedGmt,
        'discount_type': discountType,
        'description': description,
        'date_expires': dateExpires,
        'date_expires_gmt': dateExpiresGmt,
        'usage_count': usageCount,
        'individual_use': individualUse,
        'product_ids': productIds,
        'excluded_product_ids': excludedProductIds,
        'usage_limit': usageLimit,
        'usage_limit_per_user': usageLimitPerUser,
        'limit_usage_to_x_items': limitUsageToXItems,
        'free_shipping': freeShipping,
        'product_categories': productCategories,
        'excluded_product_categories': excludedProductCategories,
        'exclude_sale_items': excludeSaleItems,
        'minimum_amount': minimumAmount,
        'maximum_amount': maximumAmount,
        'email_restrictions': emailRestrictions,
        'used_by': usedBy,
        'meta_data': metaData,
        '_links': links?.toJson(),
      };
}
