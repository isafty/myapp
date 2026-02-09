import 'package:myapp/core/database/cach/cach_helper.dart';
import 'package:myapp/core/services/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}
