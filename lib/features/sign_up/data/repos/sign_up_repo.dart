import 'package:flutter_adv_course_2/core/Networking/api_error_handler.dart';
import 'package:flutter_adv_course_2/core/Networking/api_result.dart';
import 'package:flutter_adv_course_2/core/Networking/api_services.dart';
import 'package:flutter_adv_course_2/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:flutter_adv_course_2/features/sign_up/data/models/sign_up_request_response.dart';

class SignUpRepo {
  final ApiServices _apiServices;
  SignUpRepo(this._apiServices);
  Future<ApiResult<SignUpRequestResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiServices.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
