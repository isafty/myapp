import 'package:get_it/get_it.dart';
import 'package:myapp/core/database/cach/cach_helper.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
