  import 'package:go_router/go_router.dart';

void routerMethod(context,path) {
    GoRouter.of(context).push(path);
  }