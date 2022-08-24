/// 欢迎数据 Model
class WelcomeModel {
  /// 图片url
  String? image;

  /// 标题
  String? title;

  /// 说明
  String? desc;

  WelcomeModel({this.image, this.title, this.desc});

  WelcomeModel.fromJson(dynamic json) {
    image = json["image"];
    title = json["title"];
    desc = json["desc"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["image"] = image;
    map["title"] = title;
    map["desc"] = desc;
    return map;
  }
}
