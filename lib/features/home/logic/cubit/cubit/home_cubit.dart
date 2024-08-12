
import 'package:flutter_adv_course_2/features/home/data/repo/home_repo.dart';
import 'package:flutter_adv_course_2/features/home/logic/cubit/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(success: (specializationsResponseModel) {
      emit(HomeState.specializationsSuccess(specializationsResponseModel));
    }, failure: (error) {
      emit(HomeState.specializationsError(error));
    });
  }
}
