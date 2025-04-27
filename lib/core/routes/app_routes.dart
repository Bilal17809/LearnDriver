
import 'package:go_router/go_router.dart';
import 'package:learn_driving/core/routes/type_safe_route.dart';

abstract class AppRoutes{
  static final GoRouter route=GoRouter(
      initialLocation: '/Home_page',
      navigatorKey: rootNavigatorKey,
      routes: $appRoutes
  );
}