import 'package:json_annotation/json_annotation.dart';
part 'login_request_response.g.dart';
@JsonSerializable()
class LoginRequestResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  LoginRequestResponse({this.message, this.userData, this.status, this.code});

  factory LoginRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
