/// username : "ducafecat5"
/// password : "123456"

class UserLoginReq {
  UserLoginReq({
    String? username,
    String? password,
  }) {
    _username = username;
    _password = password;
  }

  UserLoginReq.fromJson(dynamic json) {
    _username = json['username'];
    _password = json['password'];
  }

  String? _username;
  String? _password;

  UserLoginReq copyWith({
    String? username,
    String? password,
  }) =>
      UserLoginReq(
        username: username ?? _username,
        password: password ?? _password,
      );

  String? get username => _username;

  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['password'] = _password;
    return map;
  }
}
