import 'package:flutter/widgets.dart';
import 'package:flutter_adv_course_2/features/login/data/models/login_request_body.dart';
import 'package:flutter_adv_course_2/features/login/data/repos/login_repo.dart';
import 'package:flutter_adv_course_2/features/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
   final formKey = GlobalKey<FormState>();


  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(success: (data) {
      emit(LoginState.sucess(data));
    }, failure: (error) {
      emit(LoginState.error(
          error: error.apiErrorModel.message ?? 'error occured'));
    });
  }
}
