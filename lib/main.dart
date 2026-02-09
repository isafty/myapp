import 'package:flutter/material.dart';
import 'package:myapp/core/database/cach/cach_helper.dart';
import 'package:myapp/core/services/service_locator.dart';
import 'package:myapp/core/utils/app_colors.dart';
import 'package:myapp/core/utils/app_router.dart';
import 'package:myapp/core/utils/app_strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appName,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
    );
  }
}
