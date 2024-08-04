import 'package:dio/dio.dart';
import 'package:flutter_adv_course_2/core/Networking/api_services.dart';
import 'package:flutter_adv_course_2/core/Networking/dio_factory.dart';
import 'package:flutter_adv_course_2/features/login/data/repos/login_repo.dart';
import 'package:flutter_adv_course_2/features/login/logic/cubit/login_cubit.dart';
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
  getIt.registerLazySingleton<LoginCubit>(
    () => LoginCubit(getIt()),
  );
}
