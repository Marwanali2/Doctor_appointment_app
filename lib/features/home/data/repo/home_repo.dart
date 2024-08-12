import 'package:flutter_adv_course_2/core/Networking/api_error_handler.dart';
import 'package:flutter_adv_course_2/core/Networking/api_result.dart';
import 'package:flutter_adv_course_2/features/home/data/apis/home_api_services.dart';
import 'package:flutter_adv_course_2/features/home/data/models/specializations_response_model.dart';


class HomeRepo{
  final HomeApiServices _homeApiServices;
  HomeRepo(this._homeApiServices);
  Future<ApiResult<SpecializationsResponseModel>>getSpecialization() async{
    try{
      final response = await _homeApiServices.getSpecialization();
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}