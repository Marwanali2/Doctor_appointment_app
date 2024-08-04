import 'package:flutter_adv_course_2/core/Networking/api_error_handler.dart';
import 'package:flutter_adv_course_2/core/Networking/api_result.dart';
import 'package:flutter_adv_course_2/core/Networking/api_services.dart';
import 'package:flutter_adv_course_2/features/login/data/models/login_request_body.dart';
import 'package:flutter_adv_course_2/features/login/data/models/login_request_response.dart';

class LoginRepo{
  final ApiServices _apiServices;
  LoginRepo(this._apiServices);
  Future<ApiResult<LoginRequestResponse>>login(LoginRequestBody loginRequestBody) async{
    try{
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}