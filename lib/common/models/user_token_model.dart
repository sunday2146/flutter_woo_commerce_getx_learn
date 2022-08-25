/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo2LCJ1c2VybmFtZSI6ImR1Y2FmZWNhdDUiLCJpYXQiOjE2NjE0MzYxNzEsImV4cCI6MTY2MjA0MDk3MX0.6Mre9tbqSfdsEe5fEC0AKYrfHkQBHHAP7n9ejS1xBnA"

class UserTokenModel {
  UserTokenModel({
    String? token,
  }) {
    _token = token;
  }

  UserTokenModel.fromJson(dynamic json) {
    _token = json['token'];
  }

  String? _token;

  UserTokenModel copyWith({
    String? token,
  }) =>
      UserTokenModel(
        token: token ?? _token,
      );

  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    return map;
  }
}
