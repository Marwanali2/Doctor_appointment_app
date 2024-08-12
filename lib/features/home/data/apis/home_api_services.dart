import 'package:dio/dio.dart';
import 'package:flutter_adv_course_2/core/Networking/api_constants.dart';
import 'package:flutter_adv_course_2/features/home/data/apis/home_api_constatnts.dart';
import 'package:flutter_adv_course_2/features/home/data/models/specializations_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_services.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiServices{
  factory HomeApiServices(Dio dio) = _HomeApiServices;

  @GET(HomeApiConstants.specializationEP)
  
  Future<SpecializationsResponseModel> getSpecialization();
} 