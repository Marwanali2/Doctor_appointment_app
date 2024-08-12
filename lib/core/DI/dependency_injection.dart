import 'package:dio/dio.dart';
import 'package:flutter_adv_course_2/core/Networking/api_services.dart';
import 'package:flutter_adv_course_2/core/Networking/dio_factory.dart';
import 'package:flutter_adv_course_2/features/home/data/apis/home_api_services.dart';
import 'package:flutter_adv_course_2/features/home/data/repo/home_repo.dart';
import 'package:flutter_adv_course_2/features/login/data/repos/login_repo.dart';
import 'package:flutter_adv_course_2/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_adv_course_2/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter_adv_course_2/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(
    () => ApiServices(dio),
  );
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt()),
  );
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt()),
  );
  getIt.registerLazySingleton<SignUpRepo>(
    () => SignUpRepo(getIt()),
  );
  getIt.registerFactory<SignupCubit>(
    () => SignupCubit(getIt()),
  );

  getIt.registerLazySingleton<HomeApiServices>(
    () => HomeApiServices(dio),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(getIt()),
  );
}
