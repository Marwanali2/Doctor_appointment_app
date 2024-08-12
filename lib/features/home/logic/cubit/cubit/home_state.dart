import 'package:flutter_adv_course_2/core/Networking/api_error_handler.dart';
import 'package:flutter_adv_course_2/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(SpecializationsResponseModel specializationsResponseModel) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) = SpecializationsError;
}