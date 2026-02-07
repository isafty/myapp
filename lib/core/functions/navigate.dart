import 'package:go_router/go_router.dart';

void pushNavigate(context, path) {
  GoRouter.of(context).push(path);
}

void pushReplaceNavigate(context, path) {
  GoRouter.of(context).pushReplacement(path);
}
