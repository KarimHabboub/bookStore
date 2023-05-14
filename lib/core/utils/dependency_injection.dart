import 'package:bookly/core/network/dio_helper.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  //هنا جعلت dio static فلا حاجة لهذه الخطوة
  //getIt.registerSingleton<DioHelper>(DioHelper(Dio()));
//
//   getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
//     getIt.get<DioHelper>(),
//   ));
}
