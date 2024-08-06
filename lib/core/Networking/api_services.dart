import 'package:dio/dio.dart';
import 'package:flutter_adv_course_2/core/Networking/api_constants.dart';
import 'package:flutter_adv_course_2/features/login/data/models/login_request_body.dart';
import 'package:flutter_adv_course_2/features/login/data/models/login_request_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices{
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginRequestResponse> login(@Body() LoginRequestBody loginRequestBody);
} 