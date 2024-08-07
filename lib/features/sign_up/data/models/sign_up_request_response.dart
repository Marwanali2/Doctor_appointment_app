import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_response.g.dart';
@JsonSerializable()
class SignUpRequestResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  SignUpRequestResponse({this.message, this.userData, this.status, this.code});

  factory SignUpRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestResponseFromJson(json);
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
